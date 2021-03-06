/*
   This file is part of Cyclos.

   Cyclos is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   Cyclos is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with Cyclos; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

 */
package nl.strohalm.cyclos.http;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nl.strohalm.cyclos.entities.access.User;
import nl.strohalm.cyclos.utils.access.LoggedUser;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * Filter that will set a ThreadLocal with the logged user
 * @author luis
 */
public class LoggedUserFilter extends OncePerRequestFilter {

    private final Map<String, Object> attributes = new HashMap<String, Object>();

    @Override
    public void destroy() {
        super.destroy();
        attributes.clear();
    }

    @Override
    public void init(final FilterConfig config) throws ServletException {
        super.init(config);
        final ServletContext servletContext = config.getServletContext();
        final WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        attributes.put("servletContext", servletContext);
        attributes.put("applicationContext", webApplicationContext);
    }

    @Override
    protected void execute(final HttpServletRequest request, final HttpServletResponse response, final FilterChain chain) throws IOException, ServletException {
        final HttpSession session = request.getSession(false);
        final User user = (User) (session == null ? null : session.getAttribute("loggedUser"));
        if (user == null) {
            // No current user: ensure the LoggedUser is cleared up and proceed the chain
            LoggedUser.cleanup();
            chain.doFilter(request, response);
        } else {
            // There is a current user: Set it and ensure it's cleared in the end
            try {
                LoggedUser.init(user, request.getRemoteAddr(), attributes);
                LoggedUser.setAttribute("request", request);
                chain.doFilter(request, response);
            } finally {
                LoggedUser.cleanup();
            }
        }
    }
}
