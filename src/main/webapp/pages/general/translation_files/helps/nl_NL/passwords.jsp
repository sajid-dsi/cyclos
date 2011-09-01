<div style="page-break-after: always;">
<p class="head_description">
In deze sectie vindt u informatie over het gebruik van wachtwoorden in Cyclos. 
Naast het inlogwachtwoord kent Cyclos het transactiewachtwoord en de pincode voor
het gebruik van mobiele apparaten en credit cards.
</p>
<i>Waar te vinden</i><br>
Uw inlogwachtwoord wijzigt u via &quot;Menu: Persoonlijk > Wijzig wachtwoord&quot;.<br>
Meer over het transactiewachtwoord leest u 
<a href="#transaction_password"><u>hier</u></a>.
<p>
<span class="broker admin">
Het wachtwoord van een deelnemer wijzigt u via het profiel van de deelnemer, sectie 
&quot;Toegang > Inlogwachtwoord beheren&quot;.
</span>
<hr>

<a NAME="change"></a>
<h3>Wachtwoord wijzigen</h3>
Voer het bestaande wachtwoord in en het nieuwe wachtwoord twee keer en klik 
op &quot;OK&quot;. Afhankelijk van de systeemconfiguratie moet het wachtwoord 
aan bepaalde eisen voldoen. Als het gekozen wachtwoord niet voldoet, verschijnt
een pop-upbericht dat u informeert over de vereisten.
<br>
Doorgaans is het niet toegestaan een wachtwoord te kiezen dat u eerder gebruikt hebt.

<span class="admin">If &quot;Force change on next login&quot; is checked the
member will be asked to change the password on the first login.<br>
If the group setting &quot;Send password by e-mail&quot; is enabled you will
have the extra option to automatically generate a new password and send it to
the member by clicking the submit button &quot;Reset password & send by
e-mail&quot;. In this case the password will be automatically generated, 
so you need not to fill in anything.</span>
<hr class="help">

<a name="transaction_password"></a>
<p class="sub_description">
<h2>Transaction password</h2>
A transaction password is a password that can be asked 
every time a user wants to make a payment.</p>
<span class="admin">
According to the system (access) settings (&quot;Menu: Settings > access settings&quot;) 
the transaction password can be typed as number in a normal
form field or with a virtual keyboard. You can also choose the characters that will be
part of the transaction password.
<p>The transaction password is managed at the user management page 
(&quot;profile > access > manage passwords&quot;). This option is only available if the
transaction password has been enabled for the group (in group autorisaties).
</span>
<hr>

<a NAME="transaction_password_generation"></a>
<h3>Transaction password</h3>
Here you can retrieve your personal <a href="#transaction_password"><u>transaction password</u></a>. 
After clicking &quot;Get transaction password&quot; your password will be displayed. Make
sure you remember your transaction password. You will only be able to retrieve
the password once. 
<hr class="help">

<span class="admin">
<a NAME="manage_transaction_password"></a>
<h3>Manage transaction Password</h3>
<br>When the <a href="#transaction_password"><u>transaction password</u></a> is enabled
for the group it can have four different statuses.
<ul>
	<li><b>Inactive:</b> The transaction password has never been
	used/generated.
	<li><b>Pending:</b> The transaction password is pending to be generated by
	the member/admin.
	<li><b>Active:</b> The transaction password has been retrieved by the
	member.
	<li><b>Blocked:</b> The transaction password has been blocked by an
	administrator.
</ul>
This status is shown in this window. <p>
An administrator (with the appropriate autorisaties) can reset or block the transaction
password by clicking the button &quot;block transaction password&quot;. 
In this case the transaction password is
invalidated and the member will not receive a new one (until an admin resets
it).<p>
You can also reset the transaction password via the button &quot;reset transaction
password&quot;. In this case the member will receive a new
transaction password. 
<hr class="help">
</span>

<a name="pin"></a>
<p class="sub_description">
<h2>PIN</h2>
A PIN is a password which is used for some types of external payments, like POS (Point of Sale), 
paypal or payments via SMS. A pin contains only numbers. <p>
</p>
<span class="admin">
To enable the PIN password, the following must be done:
<ul>
	<li><b>channel:</b> the pin must be enabled in the <a href="${pagePrefix}settings#channels_detail"><u>
	channel</u></a> (&quot;Menu: settings > channels&quot;, and click on the edit icon to modify one).
	<li><b><a href="${pagePrefix}groups#edit_member_group"><u>
	group settings</u></a>:</b> Under &quot;access settings&quot; the pin length must be set.
	<li><b> <a href="${pagePrefix}account_management#transaction_types"><u>
	transaction type</u></a>:</b> in the appropriate transaction type, the channel must be enabled.
</ul>
</span>
Pin and <a href="${pagePrefix}settings#channels"><u>channel</u></a> access can be reached via
<span class="admin">
the member <a href="${pagePrefix}profiles"><u>profile</u></a> > external access.
</span>
<span class="member">
&quot;Menu: Personal > external access&quot;.
</span>
<hr>

<a NAME="change_pin"></a>
<h3>Change / Unblock PIN</h3>
A <a href="#pin"><u>pin</u></a> is used for some types of external payments like POS (point of sale), paypal
or SMS payments.<br>
A PIN can only be numeric (no letters allowed). To change your PIN you have to
type your login password first. In case the
<a href="#transaction_password"><u>transaction password</u></a>
is used you have to enter that first (in stead of the login password). The pin
must be entered twice and confirmed with the &quot;Submit&quot; button.<p>
When the PIN is entered wrongly it can be blocked after an amount of attempts (by default 3).
You can either wait until the blocking time has been expired or &quot;un-block&quot; the PIN
manually selecting the un-block button below the change PIN window.
<hr class="help">

<a NAME="select_channels"></a>
<h3>Channels</h3>
Here the possible
<span class="admin"> <a href="${pagePrefix}settings#channels"><u>channels</u></a>
are shown.</span>
<span class="member">channels are shown; a channels is a media via which
cyclos is accessed, for example the web via a browser, or a mobile phone. </span>
<br>
Not all may be available, depending on the configuration in your organization.
You can select the channels you want to use by checking the checkbox.
<ul>
	<li><b>Posweb payments:</b> Point of sale payments (payments as consumer
	at shop).
	<li><b>WAP 1 access:</b> Mobile phone access for older models that support
	WAP 1 (Wireless Application Protocol 1). The mobile payment supports the saldo
	overview, browsing to payment history and payments.
	<li><b>WAP 2 access:</b> Mobile phone access for more modern mobile phones
	that support WAP 2 (Wireless Application Protocol 2). The mobile payment
	supports the saldo overview, browsing to payment history and payments.
	<li><b>Webshop payments:</b> Allow payments at external (e-commerce)
	sites. </u> Don't forget to click &quot;submit&quot; after having made your
	choices, otherwise the changes won't be saved.
</li></ul>
<hr class="help">

</div> <%--  page-break end --%>

<div class='help'>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>