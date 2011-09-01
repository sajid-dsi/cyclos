<div style="page-break-after: always;">
<span class="admin">
<p class="head_description">
Cyclos unterstützt verschiedene Sprachen, und ermöglicht Ihnen, Übersetzungen zu verwalten. 
Alle dem Endnutzer angezeigten Texte sind in einer sprach-spezifischen Datei (Sprachtabelle) 
enthalten (für jede Sprache eine), zuzüglich einer begrenzten Anzahl von statischen Textdateien für 
größere Textblocks.<br>
Das Cyclos-System bietet eine Reihe von Sprachen zur Auswahl. Zur Änderung der 
Sprache sind im Menü Einstellungen nur wenige Mausklicks nötig. <br>
Falls Sie mit den von Cyclos zur Verfügung gestellten Übersetzungen nicht zufrieden sind, 
so können Sie jeden einzelnen Text oder Begriff ändern. Dieses Modul enthält außerdem einen 
Abschnitt zum Verwalten aller über das Cyclos-System versendeten Nachrichten und 
E-Mail-Benachrichtigungen.</p>
<i>Wo ist es zu finden?</i><br>
Die Übersetzungsmodule sind über das &quot;Menü: Übersetzung&quot; zugänglich. Die folgenden 
Untermenü-Elemente sind verfügbar:
<ul>
	<li><b><a href="#translation_keys"><u>Anwendung:</u></a></b>
	Ermöglicht Ihnen die Verwaltung der Übersetzungen aller kleineren Textstellen und Begriffe, 
	so wie sie in den Anwendungsfenstern erscheinen.
	<li><b><a href="#notifications"><u>Benachrichtigungen:</u></a></b>
	Ermöglicht Ihnen die Verwaltung der System-Benachrichtigungen.
	<li><b>E-Mails:</b> Ermöglicht Ihnen die Verwaltung der Texte der System-E-Mails.
	<li><b>Import/Export:</b> Ermöglicht Ihnen das Importieren oder Exportieren der Sprachtabellen. 
	Dies erlaubt Cyclos-Nutzergemeinschaften ihre Übersetzungen mit anderen Cyclos-Nutzern zu teilen.
</ul>
Anmerkung 1: Statische Textdateien, wie die Kontaktseite und neue Seiten, werden nicht über 
das Übersetzungsmodul verwaltet, sondern über das <a href="${pagePrefix}content_management"><u>Content Management</u></a>.
<p>
Anmerkung 2: Falls Sie die Sprache in Cyclos verändern möchten, so ist dies nicht der richtige Ort. 
Die Sprache ändern können Sie über <a	href="${pagePrefix}settings#local"><u>Menü: Einstellungen > Basiseinstellungen</u></a> 
im Abschnitt &quot;Internationalisierung&quot;.<br> 
<hr>

<a name="translation_keys"></a>
<p class="sub_description">
<h2>Übersetzungsschlüssel</h2>
Alle kurzen Textstellen, welche in den Cyclos-Interfaces erscheinen, sind in einer Sprachtabelle 
enthalten. Pro Sprache gibt es eine Sprachtabelle. Das Cyclos-Interface ermöglicht Ihnen sowohl 
das Ersetzen einer ganzen Sprachtabelle, als auch die Bearbeitung jedes einzelnen 
Übersetzungsschlüssels.
</p>
Falls ein auf einer Anwendungsseite platzierter <a href="#key"><u>Übersetzungsschlüssel</u></a> 
in der <a href="#language_file"><u>Sprachtabelle</u></a> nicht zu finden ist, so wird, anstelle
des Textes, der Übersetzungsschlüssel zwischen Fragezeichen dargestellt. Dies sieht für gewöhnlich 
so aus: &quot;???translationMessage.search.showOnlyEmpty???&quot;. In einem solchen Fall können
Sie selbst den Schlüssel (und seinen Wert) der Sprachtabelle hinzufügen, über 
&quot;Menü: Übersetzung > Anwendung&quot;.
<p>Falls Sie nicht einverstanden sind mit der Übersetzung, so wie sie im Browserfenster erscheint, 
können Sie sie bearbeiten. Folgen Sie dabei den folgenden Schritten:
<ol>
	<li>Gehen Sie zur Suchseite für Übersetzungsbegriffe (über das &quot;Menü:
	Übersetzung > Anwendung&quot;, und geben sie dort den Begriff den Sie ändern wollen
	in das Textfeld &quot;Wert&quot; ein. Dabei müssen Sie nicht auf Groß- und
  Kleinschreibung achten. Das Programm sucht auch dann nach Übereinstimmungen, wenn Sie nur einen 
  Teil des Begriffes eingeben. Klicken Sie auf	&quot;Suche&quot;, um die Ergebnisse anzuzeigen.
	<li>Auf der Ergebnis-Seite, verwenden Sie bitte das Bearbeiten-Symbol <img border="0"
		src="${images}/edit.gif" width="16" height="16">&nbsp;um den Wert zu ändern.
</ol>
<p>Sie können auch vollständige Übersetzungsschlüssel (Wertepaare) aus der Sprachtabelle entfernen 
oder ihr hinzu fügen. Dies ist allerdings ein wenig heikel, wir raten Ihnen zuvor die 
<a href="#caution"><u>Warnhinweise</u></a> dazu zu lesen.
<hr>

<a name="caution"></a>
<h3>Vorsicht beim Einfügen/Entfernen von Übersetzungsschlüssel</h3>
Das Cyclos Interface ermöglicht Ihnen, <a href="#key"><u>Übersetzungsschlüssel</u></a> 
in der <a href="#language_file"><u>Sprachtabelle</u></a> zu bearbeiten, zu entfernen oder
hinzu zu fügen. Die Änderung dieser Codes ist ein ungefährlicher Vorgang, während die 
Entfernung oder das Hinzufügen etwas heikel sein kann. Sie sollten dies nur dann angehen, 
wenn Sie ein gründliches Verständnis davon haben, wie das System mit den Übersetzungsschlüssel 
funktioniert.<br>
Ein Schlüssel, der entfernt wird, verschwindet nur aus der Sprachtabelle selbst. 
Er verschwindet NICHT von den Anwendungsseiten. Ist der Übersetzungsschlüssel auf den 
Anwendungsseiten noch in Gebrauch, wenn Sie ihn entfernen, so wird auf der Seite 
zukünftig der Übersetzungsschlüssel zwischen Fragezeichen erscheinen, was für gewöhnlich 
nicht wirklich gut aussieht (Beispiel: &quot;???about.bla.something.title???&quot;).<br>
Und umgekehrt: der Sprachdatei einen Übersetzungsschlüssel hinzu zu fügen hilft rein gar nichts, 
wenn Sie diesen Übersetzungsschlüssel nicht auch irgendwo verwenden. Dies können Sie tun, 
indem Sie <a href="${pagePrefix}content_management"><u>Anwendungsdateien</u></a>  
anpassen.<br>
Es kann auch passieren, dass ein Übersetzungsschlüssel durch eine Aktualisierung verloren 
geht – obwohl dies außerordentlich selten ist. Eine normale Cyclos-Aktualisierung wird die 
neuen Übersetzungsschlüssel hinzu fügen. In solch einem Fall können Sie allerdings den Übersetzungsschlüssel 
ohne weiteres selbst hinzu fügen.
<hr class="help">


<A NAME="application"></A>
<h3>Übersetzungsschlüssel suchen</h3>
In diesem Fenster können Sie nach <a href="#key"><u>Übersetzungsschlüssel</u></a> suchen.<br>
Geben Sie den Schlüssel oder <a href="#value"><u>Wert</u></a> in das entsprechende Textfeld ein.
Bitte beachten Sie, dass es dabei nicht auf Groß- und Kleinschreibung ankommt, und dass Sie 
nicht den vollständigen Begriff eingeben müssen. Die Suche läuft auch mit partiellen Übereinstimmungen. 
Und natürlich können Sie auch einfach gar nichts eingeben, und &quot;Suche&quot; anklicken.
Dies zeigt dann alle verfügbaren Übersetzungsschlüssel mit seinen Werten auf der 
Ergebnisseite an.<br>
Wählen des &quot;Nur leere Werte&quot;-Kontrollkästchens zeigt Ihnen nur die Übersetzungsschlüssel, 
die keine Übersetzung haben (was möglicherweise auf eine Aktualisierung zurück zu führen ist).<br>
Das Suchergebnis erscheint im Fenster <a href="#application_results"><u>Suchergebnisse</u></a> weiter unten. 
In diesem Fenster haben Sie die Möglichkeit, die Übersetzung pro Übersetzungsschlüssel zu ändern.
<p>Es ist ebenfalls möglich, neue Übersetzungsschlüssel hinzu zu fügen. Wenn Sie dies tun möchten, 
klicken Sie bitte auf die Schaltfläche &quot;neuen Schlüssel einfügen&quot;. Wir raten, zuvor die 
entsprechenden <a href="#caution"><u>Warnhinweise</u></a> zu lesen.
<p>
Anmerkung: falls Sie die Sprache in Cyclos verändern möchten, so ist dies nicht der 
richtige Ort. Die Sprache ändern können Sie über <a	href="${pagePrefix}settings#local">
<u>Menü: Einstellungen > Basiseinstellungen</u></a> im Abschnitt &quot;Internationalisierung&quot;.<br> 
<hr class="help">

<a name="application_results"></a>
<h3>Suchergebnisse (für Übersetzungsschlüssel / Wert)</h3>
Dieses Fenster zeigt die Suchergebnisse, die Sie im <a href="#application"> <u>Fenster oben</u> definiert haben</a>.<br>
In diesem Fenster können Sie einen Übersetzungsschlüssel wählen und löschen (über das 
Löschen-Symbol <img border="0" src="${images}/delete.gif" width="16" height="16">&nbsp;), oder ihn 
bearbeiten (über das Symbol <img border="0" src="${images}/edit.gif" width="16" height="16">&nbsp;<i>Ändern</i>). 
Wenn Sie mehrere Übersetzungsschlüssel löschen möchten, können Sie über die Kontrollkästchen 
einen oder mehrere auswählen, und benutzen dann die Schaltfläche &quot;Ausgewählte entfernen&quot;.


Bitte beachten Sie, dass das Löschen von Übersetzungsschlüssel heikel sein kann, es empfiehlt sich, 
zuvor die entsprechenden <a href="#caution"><u>Warnhinweise</u></a> zu lesen. 
<hr class="help">

<A NAME="edit_key"></A>
<h3>Übersetzungsschlüssel ändern</h3>
In diesem Fenster können Sie den <a href="#value"><u>Wert</u></a> des 
<a href="#key"><u>Übersetzungsschlüssels</u></a> ändern. Klicken Sie bitte zuerst auf &quot;Bearbeiten&quot;, 
nehmen Sie die gewünschten Änderungen vor, und klicken Sie dann auf &quot;Weiter&quot;, 
um Ihre Änderungen zu speichern.<br>
Sie können die Eingabe in mehreren Zeilen tätigen, allerdings wird dies meist ignoriert, und das 
Ergebnis erscheint in einer einzigen Zeile.
<hr class="help">

<A NAME="insert_key"></A>
<h3>Neuer Übersetzungsschlüssel</h3>
Hier können Sie einen neuen <a href="#key"><u>Übersetzungsschlüssel</u></a> und 
<a href="#value"><u>Wert</u></a> eingeben. Geben Sie Ihre Änderungen einfach in das Bearbeitungsfeld 
ein und klicken Sie auf &quot;Weiter&quot;. Bevor Sie neue Übersetzungsschlüssel eingeben, empfehlen wir Ihnen, 
die entsprechenden <a href="#caution"><u>Warnhinweise</u></a>  zu lesen.
<hr class="help">

<A NAME="import_file"></A>
<h3>Import/Export der Sprachtabelle</h3>
In diesem Fenster können Sie eine <a href="#language_file"><u>Sprachtabelle</u></a> 
<a href="#import"><u>importieren</u></a> oder <a href="#export"><u>exportieren</u></a>. 
Für mehr Information, folgen Sie bitte den Links.
<hr class="help">

<a name="import"></a>
<h3>Sprachtabelle importieren</h3>
Das obere Bereich in diesem Fenster dient dem Importieren einer neuen 
<a href="#language_file"><u>Sprachtabelle</u></a> . Dies kommt allerdings nur sehr selten 
vor, z.B. wenn Cyclos eine neue Sprache hinzu gefügt wird. Eine normale Cyclos-Aktualisierung 
wird automatisch alle neuen <a href="#key"><u>Übersetzungsschlüssel</u></a> 
hinzu fügen (falls es welche gibt).
<p>Zuallererst müssen Sie entscheiden &quot;Wie wird importiert&quot;. Hier gibt es vier Optionen:
<ul>
	<li><b>Importiere nur neue Übersetzungsschlüssel:</b> Hiermit werden lediglich die neuen 
	Übersetzungsschlüssel importiert, die alten Schlüssel werden allerdings so belassen, wie sie sind.
	<li><b>Importiere nur neue und leere Übersetzungsschlüssel:</b> Der gleiche Vorgang wie 
	zuvor, allerdings werden hier auch leere Übersetzungsschlüssel importiert (das sind noch 
	nicht mit einem Wert versehene Schlüssel, wahrscheinlich weil die Übersetzung bislang noch 
	nicht abgeschlossen ist).
	<li><b>Importiere neue und geänderte Übersetzungsschlüssel:</b> Dies importiert neue und auch 
	geänderte Übersetzungsschlüssel. Das bedeutet, dass wenn Sie einige Werte selbst geändert haben, 
	werden diese wieder mit dem &quot;Originalwert&quot; überschrieben. Nicht mehr verwendete 
	Übersetzungsschlüssel	werden entfernt. 
	<li><b>Gesamte Sprachtabelle ersetzen:</b> Hierdurch wird die gesamte Sprachtabelle überschrieben. 
	Alle von Ihnen in der Vergangenheit getätigten Anpassungen gehen damit natürlich verloren.
</ul>
Danach müssen Sie die lokal auf Ihrem Computer gespeicherte Sprachtabelle mit &quot;Durchsuchen&quot; 
auswählen und dann auf &quot;Weiter&quot; klicken.
<p>Anmerkung: Es ist nicht notwendig für die zu importierende Sprachtabelle, alle Übersetzungsschlüssel 
zu enthalten – es sei denn, Sie wählen &quot;Gesamte Sprachtabelle ersetzen&quot;. In allen 
anderen Fällen kann es sich um eine beliebige Anzahl an Übersetzungsschlüssel handeln (die 
allerdings im richtigen Format sein müssen). Wenn Sie die gesamte Sprachtabelle ersetzen möchten, 
stellen Sie bitte sicher, dass Sie auch die gesamte Sprachtabelle hinaufladen. Andernfalls 
riskieren Sie den Verlust Ihrer existierenden Übersetzungsschlüssel.

<h3>Sprachtabelle exportieren</h3>
Der Formularteil für das Exportieren der gegenwärtigen <a href="#language_file">
<u>Sprachtabelle</u></a> ist äußerst einfach: benutzen Sie einfach die Schaltfläche 
&quot;Export als Sprachtabelle&quot;. Wenn Sie diese Schaltfläche anklicken, übernimmt 
der Browser, und fragt Sie normalerweise, ob Sie die Datei speichern möchten.<br>
Das Exportieren einer Sprachdatei kommt äußerst selten vor, Sie möchten dies möglicherweise 
machen, wenn Sie Ihre neue Cyclos-Übersetzung anderen Nutzern in der Cyclos-Gemeinschaft 
zur Verfügung stellen möchten. Haben Sie eine eigene Übersetzung erstellt, 
laden wir Sie herzlich ein, uns zu kontaktieren und uns Ihre Übersetzung zur Verfügung 
zu stellen, so dass wir sie in die offizielle Cyclos-Verteilung aufnehmen können. 
Die Kontaktadresse finden Sie auf der Projektseite <a href="http://project.cyclos.org">
<u>http://project.cyclos.org</u></a>.
<hr class="help">

<a name="notifications"></a>
<h2>Benachrichtigungen</h2>
Die Inhalte der verschiedenen Benachrichtigungen können Sie mit Hilfe der 
folgenden Fenster verwalten:
<hr>

<A NAME="general_notifications"></A>
<h3>Allgemeine Benachrichtigungen</h3>
Dieses Fenster zeigt Ihnen allgemeine <a href="${pagePrefix}notifications"><u>
Benachrichtigungen</u></a>. Dies sind üblicherweise Präfixe und Endungen, die an 
herausgehende Mails angefügt werden. Um den Inhalt verändern zu können, klicken Sie 
bitte auf das Symbol &quot;Bearbeiten&quot; <img border="0" src="${images}/edit.gif" width="16" height="16">&nbsp;.
<hr class="help">

<A NAME="member_notifications"></A>
<h3>Mitglieder Benachrichtigungen</h3>
Dieses Fenster zeigt Ihnen die <a href="${pagePrefix}notifications"><u>
Benachrichtigungen</u></a> die zu verschiedenen Angelegenheiten an Mitglieder versandt werden. 
Um den Inhalt verändern zu können, klicken Sie bitte auf das Symbol &quot;Bearbeiten&quot; 
<img border="0" src="${images}/edit.gif" width="16" height="16">&nbsp;.
<hr class="help">

<A NAME="admin_notifications"></A>
<h3>Administrator Benachrichtigungen</h3>
Dieses Fenster zeigt Ihnen die <a href="${pagePrefix}notifications"><u>
Benachrichtigungen</u></a> die zu verschiedenen Angelegenheiten an Administratoren 
versandt werden. Um den Inhalt verändern zu können, klicken Sie bitte auf das Symbol 
&quot;Bearbeiten&quot; <img border="0" src="${images}/edit.gif" width="16" height="16">&nbsp;.
<hr class="help">

<A NAME="edit_notifications"></A>
<h3>Benachrichtigungen bearbeiten</h3>
Dieses Fenster ermöglicht Ihnen, den Inhalt der Benachrichtigungen zu ändern. Um dies tun 
zu können, klicken Sie bitte zuerst auf &quot;Bearbeiten&quot; (wie immer); sobald Sie fertig sind, 
speichern Sie Ihre Änderungen, indem Sie auf &quot;Weiter&quot; klicken.<br>
Hier erscheint ein Rich-Text Editor der Ihnen eine umfangreiche Formatierung ermöglicht. Sie können 
auch einige Variaben (#variable#) verwenden, abhängig von der zu ändernden Benachrichtigung.
<%-- welche Felder?? --%>
<hr class="help">


<A NAME="mail_translation"></A>
<h3>E-Mail Übersetzung</h3>
Dieses Fenster ermöglicht Ihnen, den Inhalt der zu bestimmten Vorgängen versandten 
E-Mail-Nachrichten zu ändern. Um dies tun zu können, klicken Sie bitte zuerst auf 
&quot;Bearbeiten&quot; (wie sonst auch); sobald Sie fertig sind, speichern Sie Ihre Änderungen, 
indem Sie auf &quot;Weiter&quot; klicken.<br>
Derzeit können die folgenden E-Mails verändert werden:
<ul>
	<li><b>E-Mail - Einladung:</b> diese E-Mail wird versandt, wenn Sie die Option
	<a href="${pagePrefix}home#home_invite"><u>Einladung</u></a> über
	&quot;Menü: Startseite > Einladung&quot; wählen.
	<li><b>E-Mail - Aktivierung:</b> dies Mail wird nach seiner Aktivierung an das 
	Mitglied versandt. Dies geschieht üblicherweise nach seiner Registrierung, 
	wenn ein Administrator 	das Konto aktiviert, indem er das Mitglied aus der Gruppe 
	&quot;<a href="${pagePrefix}groups#inactive_members"><u>Interessierte Mitglieder</u></a>&quot; 
	in eine andere Gruppe verschiebt (z.B. Vollwertige Mitglieder).
	<li><b>E-Mail - Bestätigung bei öffentlicher Registrierung:</b> Die E-Mail, die an ein 
	potenzielles Mitglied versandt wird, das sich zum ersten mal zu registrieren versucht. 
	Damit diese E-Mail versandt werden kann, muss Cyclos <a href="${pagePrefix}notifications"><u>
	dafür konfiguriert sein</u></a>.
	<li><b>E-Mail - Kennwort zurücksetzen:</b> diese E-Mail wird an den Benutzer versandt, wenn sein 
	Kennwort zurückgesetzt wurde.
</ul>
In allen diesen Definitionen können Sie Variablen (#variable#) verwenden, um Daten im Text zu zeigen.
<%-- welche Felder?? --%>
<hr class="help">

<a name="imexport_notifications_mails"></a>
<h3>Import / Export Benachrichtigungen und E-Mail Übersetzungen</h3>
Dieses Fenster ermöglicht Ihnen, übersetzte Texte aus E-Mails und Benachrichtigungen in 
eine bzw. aus einer Datei zu importieren oder exportieren. Das Format der Datei ist xml, 
und kann durch jede Cyclos-Instanz dieser (und zukünftiger) Cyclos Versionen gelesen werden.<br>
Ein Grund um dies zu tun ist, Übersetzungen zwischen Cyclos-Instanzen auszutauschen, 
oder aber zur Datensicherung.<br>
Das Formular ist recht unkompliziert. Wenn Sie &quot;Importieren&quot; wählen, sollten Sie 
die Datei über die &quot;Durchsuchen&quot;-Schaltfläche auswählen. Für den Fall, dass Sie eine Datei 
exportieren möchten, übernimmt der Browser und fragt, wo Sie die Datei speichern möchten.
<hr class="help">

<p><a name="glossary"></a>
<h2>Glossar der Begriffe</h2>
<p></p>

<a name="language_file"></a> <b>Sprachtabelle</b>
<p>
In Cyclos gibt es für jede Sprache eine Sprachtabelle. Diese Datei enthält alle Texte, welche 
im Cylos-Interface erscheinen (außer größeren Textblocks, welche in kompletten Dateien 
abgelegt sind).<br>
Sprachtabellen werden stets einem bestimmten Muster folgend benannt: 
&quot;ApplicationResources_xx_XX.properties&quot;, wobei das xx durch den Sprachcode, 
und XX durch den Ländercode ersetzt werden. Beispiel: &quot;ApplicationResources_en_US.properties&quot; ) 
ist die Datei für US-Englisch.<br>
Eine Sprachtabelle enthält <a href="#key"><u>Übersetzungsschlüssel</u></a> und <a href="#value"><u>Werte</u></a>; 
diese werden durch das Zeichen &quot;=&quot; getrennt, ohne Leerstellen.
<hr class='help'>

<a name="key"></a> <b>Übersetzungs-Schlüssel</b>
<p>Die Übersetzungsschlüssel werden in die Anwendungsdateien eingefügt; werden diese Seiten 
von Ihrem Browser gezeigt, dann werden die Übersetzungsschlüssel in der 
<a href="#language_file"><u>Sprachtabelle</u></a> gesucht und durch die entsprechenden, 
in dieser Datei gefundenen <a href="#value"><u>Werte</u></a> ersetzt.
<hr class='help'>

<a name="value"></a> <b>Übersetzungs-Wert</b>
<p>Übersetzungswerte sind die Worte und Begriffe in Ihrer eigenen Sprache, die Sie 
auf den Cyclos-Seiten in Ihrem Browser sehen. Die Originalseiten enthalten diese Werte nicht. 
Anstatt dessen werden die <a href="#key"><u>Übersetzungsschlüssel</u></a> in die Anwendungsdateien 
eingefügt; werden diese Seiten von Ihrem Browser gezeigt, dann werden die Übersetzungsschlüssel 
in der <a href="#language_file"><u>Sprachtabelle</u></a> gesucht und durch die entsprechenden, 
in dieser Datei gefundenen Werte ersetzt.<br>
Alle Übersetzungswerte (in der Anwendung, Benachrichtigungen und E-Mails) können 
&quot;Variablen&quot; enthalten. Die Variablen sind stets von zwei #
eingerahmt, wie z.B. #member#, #title# und #amount#. Die Variable wird beim Anzeigen in 
Cyclos durch den korrekten Wert ersetzt. Die Namen der Variablen erklären sich von selbst, 
und alle möglichen Variablen werden in den Übersetzungswerten der Standardeinstellung verwendet.
<hr class='help'>

</span>

</div> <%--  page-break end --%>