---
title: 'Thorsten Hennrich: Cloud Computing nach der Datenschutz-Grundverordnung'
subtitle: 'Zusammenfassung'
author: 'Patrick Bucher'
lang: 'de'
---

# Einleitung

Die drei führenden Hyperscaler ‒ Amazon Web Services (AWS), Microsoft Azure und
Google Cloud ‒ sind in den USA beheimatet. Die Verarbeitung von Daten in der
Cloud geschieht oft länderübergreifend. Datenschutz ist jedoch oftmals national
geregelt. Auch kann eine Datenverarbeitung mehrere Hersteller betreffen, mit
denen man unterschiedliche vertragliche Regelungen getroffen hat.

Die DSGVO wurde am 25. Mai 2018 eingeführt und sieht hohe Bussgelder bei
Verstössen gegen den Datenschutz vor.

# Cloud Computing: Einführung, Basics und wichtigste Begriffe

Cloud Computing ist im Grunde eine Auslagerung von Tätigkeiten mit IT-Bezug zu
einem externen Dienstleister; eine flexible und nutzungsorientierte Form von
IT-Outsourcing. "Cloud" wird oftmals als Synonym für Online-Datenspeicher oder
Internet verwendet. (Siehe auch "NIST Definition of Cloud Computing" für eine
genauere Definition.) Das BSI versteht unter "Cloud Computing" ein dynamisch an
den Bedarf angepasstes Anbieten, Nutzen und Abrechnen von IT-Dienstleistungen.

Zur Bereitstellung von IT-Ressourcen als Cloud benötigt es breitbandige
Datennetzte mit tiefer Latenz (zwischen den Datenzentren, aber auch zu den
Endverbrauchern, z.B. via Glasfaser), leistungsfähige Standardhardware (die zu
homogenen Pools zusammengeschlossen werden kann), vielfältige Zugangsgeräte
(PCs, Notebooks, Smartphones, IoT-Geräte) und Thin Clients, die mittels Browser
bedienbar sind.

Cloud Computing kann verstanden werden als Weiterentwicklung und Kombination von
Basistechnologieen wie dem Grid Computing (z.B. SETI@home), von Application
Service Providers (ASPs), die eine Anwendung zentral auf Servern zur Verfügung
stellen, der serviceorientierten Architektur (SOA), wobei Anwendungen durch
standardisierte Schnittstellen angeboten werden und der Virtualisierung, welche
die Hardware abstrahiert, in Pools zusammenfasst und dadurch flexibel anbieten
und optimal ausnutzen kann. Anwendungen können werden mitsamt benötigten
Programmbibliotheken in unveränderlichen Containern gebündelt und können so
unabhängig von einer bestimmten Umgebung ausgeführt werden. Container werden
oftmals mit Docker gebaut und mit Kubernetes orchestriert.

Cloud-Angebote können in drei Schichten eingeteilt werden:

- Infrastructure as a Service (IaaS): Die Infrastruktur wird gemietet statt
  angeschafft, wodurch Investitionskosten (etwa für Server) wegfallen bzw. in
  laufende Kosten umgewandelt werden. Durch die Auslagerung der IT-Infrastruktur
  ergeben sich Risiken im Datenschutz und in der Anbieterabhängigkeit.
  Beispiel: virtuelle Maschinen.
- Platform as a Service (PaaS): Laufzeit- und Entwicklungsplattformen (mitsamt
  zugrundeliegender Hardware) werden gemietet statt selber entwickelt. Diese
  Ebene richtet sich v.a. an Kunden, die ihre eigene Software entwickeln und
  betreiben wollen. Der PaaS-Markt ist kleiner als der IaaS- und der SaaS-Markt,
  weswegen sich die Risiken eines Vendor Lock-Ins erhöhen. Beispiel: Google App
  Engine.
- Software as a Service (SaaS): Software wird nicht angeschafft und selber
  betrieben, sondern von einem Anbieter (meist in einem Abo-Modell) meist als
  Web-Anwendung bezogen. Die Kosten für den eigenen Betrieb fallen weg, dafür
  steigt die Abhängigkeit von einem bestimmten Anbieter. Beispiele: Microsoft
  365, Salesforce.

Cloud-Angebote werden in verschiedenen Formen bereitgestellt:

- Public Cloud: Diese Angebote sind für jedermann, d.h. öffentlich auf gemeinsam
  genutzter Hardware verfügbar. Die gemeinsame Verarbeitung von Daten
  verschiedener Nutzer ist für diese transparent. Anbieter mit sehr
  umfangreichen Ressourcen, die massiv skalieren können, werden als
  _Hyperscaler_ bezeichnet.
- Private Cloud: Eine Cloud-Umgebung wird von einer Organisation zur eigenen
  Verwendung oder zur Verwendung eines eingeschränkten Nutzerkreises aufgebaut.
  Die Skalierbarkeit ist zumeist geringer als bei einer Public Cloud, dafür
  können Risiken im Datenschutz und in der Datensicherheit besser kontrolliert
  werden. Es gibt Anbieter, die ihre vermeintliche Private Cloud selber auf
  einer Public Cloud hosten.
- Hybrid Cloud: Hierbei werden Public Cloud und Private Cloud (und, optional,
  Legacy-Hardware) zu einer hybriden Cloud kombiniert. Daten können gemäss ihrem
  Schutzbedarf verarbeitet werden. Diese Mischform erschwert jedoch den Betrieb.
- Multi Cloud: Angebote verschiedener Anbieter werden zusammengeschlossen und
  können über eine einheitliche Managementoberfläche oder
  Orchestrierungswerkzeuge einheitlich genutzt werden. Hierdurch reduziert sich
  die Abhängigkeit von einzelnen Anbietern. Im Gegenzug erhöht sich die
  Komplexität, und den unterschiedlichen Standorten der Anbieter muss Rechnung
  getragen werden (bezogen auf Datenschutz und Datensicherheit).
- Community Cloud: Mehrere Organisationen mit vergleichbaren Anforderungen
  (regulatorisch, technisch) betreiben eine gemeinsame Cloud-Infrastruktur für
  ihren eigenen Bedarf.

Die wichtigsten Cloud-Anbieter sind:

- Amazon Web Services (AWS): Der weltweit grösste Cloud-Anbieter wurde 2006
  gegründet und bietet Hosting von Kleinkunden bis zu Grosskonzernen an, wobei
  Netflix einer der prominentesten Kunden ist. Wichtige Services sind die
  _Elastic Compute Cloud_ (EC2, virtuelle Server) und der _Simple Storage
  Service_ (S3, Datenspeicher). Die Infrastruktur ist unterteilt in Regionen und
  Availability Zones. Eine Region ist der Standort eines Rechenzentrumsclusters
  in einem bestimmten Land oder geografischen Gebiet. Pro Region gibt es
  mindestens eine Availability Zone bestehend aus einem oder mehreren
  Rechenzentren. Availability Zones sind voneinander isoliert und physisch
  getrennt, d.h. Ausfälle einer Zone können andere Zonen nicht beeinflussen. Die
  Datenverarbeitung kann auf bestimmte Regionen eingeschränkt werden. Mit _AWS
  Outposts_ kann On-Premise-Hardware in AWS eingebracht werden.
- Google Cloud Platform (GCP): Der Suchmaschinenanbieter Google rief seine Cloud
  im Jahr 2008 ins Leben und stellte die PaaS-Plattform _App Engine_ zur
  Verfügung. Seit 2013 verfügt die GCP mit der _Compute Engine_ über ein
  IaaS-Anegbot. Google unterschweidet (wie bei AWS) zwischen Regionen und
  (voneinander isolierten) Zonen. Nicht alle Angebote stehen in jeder Region zur
  Verfügung.
- Microsoft Azure: Der derzeit zweitgrösste Cloud-Anbieter wurde 2010 gegründet
  und verfügt über ein vergleichbares Angebot wie AWS und Google, wobei
  Microsoft 365 eines der wichtigsten SaaS-Angebote ist. Die Infrastruktur ist
  in Regionen und Verfügbarkeitszonen gegliedert. Mithilfe sogenannter
  _Azure-Geografien_ können Daten und Dienste unter Wahrung von
  Compliance-Anforderungen innerhalb einer geografischen Region verschoben
  werden. Bei Microsoft 365 hängt das Land der Datenspeicherung hängt von der
  Rechnungsadresse des Kunden ab.

# Datenschutz nach der DSGVO: Einführung und wichtigste Basics für die Cloud-Computing-Praxis

Datenschutz bewahrt die Freiheit natürlicher Personen, selbst über den Umgang
ihrer personenbezogenen Daten zu entscheiden und schützt das Recht auf
informationelle Selbstbestimmung. Die DSGVO ist das Ergebnis einer
Datenschutzreform, welche die Regeln EU-weit vereinheitlicht. Sie ist eine
Verordnung und nicht nur eine blosse Richtlinie und damit direkt in den
EU-Mitgliedsstaaten gültig. In den jeweiligen Ländern wird sie durch Anpassungs-
und Umsetzungsvorschriften ergänzt. Ziel der DSGVO war es auch, Europa
"cloud-friendly" und "cloud-active" zu machen, wobei Hindernisse im
grenzüberschreitenden Cloud Computing beseitigt worden sind. Die DSGVO ist
technologieneutral formuliert und schafft einen europaweiten einheitlichen
Rahmen für Datenschutz. Den wirtschaftlichen Vorteilen des Cloud Computings
stehen Sicherheits- und Datenschutzbedenken bei potentiellen Kunden gegenüber.
Wichtige Fragestellungen hierbei sind u.a.:

1. Wann lieft eine Verarbeitung personenbezogener Daten vor?
2. Was ist bei der Auswahl eines Cloud-Anbieters zu berücksichtigen?
3. Wo befinden sich die Daten, und wie sicher ist die Cloud-Infrastruktur?
4. Wann und wie muss ein Auftragsverarbeitungsvertrag (AV-Vertrag) abgeschlossen werden?
5. Wie ist die Datenübertragung in andere Länder geregelt?

Personenbezogene Daten sind geschützt; deren Verarbeitung unterliegt einem
Verbot mit Erlaubnisvorbehalt. (Was nicht explizit erlaubt worden ist, ist
verboten.) Wird eine Datenverarbeitung erlaubt, bezeichnet man dies als
_Erlaubnistatbestand_. Als personenbezogene Daten versteht man u.a.
Informationen, die sich auf eine Person beziehen, und mithilfe derer eine Person
identifiziert werden kann (Name, Adresse, Geburtsdatum, E-Mail-Adresse,
IP-Adresse usw.). Eine Person, deren Daten verarbeitet werden, wird als
_betroffene Person_ bezeichnet.  Unter einer Datenverarbeitung versteht man den
ganzen Zyklus von Erhebung über Speicherung, Übermittlung, Nutzung bis zur
Löschung der Daten. Die Datenverarbeitung ist rechtmässig, wenn ein
Erlaubnisvorbehalt vorliegt und sie im Einklang mit gesetzlichen Vorgaben
(DSGVO, weitere) erfolgt.

Die wichtigsten Akteure im Datenschutz sind:

- Die betroffene Person (_Data Subject_) ist eine natürliche Person, welche über
  schützenswerte personenbezogene Daten zur Datenverarbeitung verfügt.
- Der Verantwortliche (_Controller_) ist eine natürliche oder juristische
  Person, welche mit anderen über Zweck und Mittel einer Datenverarbeitung
  entscheidet; d.h. im Cloud Computing ist es der Nutzer eines Angebots. Im
  Rahmen der DSGVO ist jedes Unternehmen als Verantwortlicher anzusehen.
- Der gemeinsam Verantwortliche (_Joint Controller_) ist jemand, der die Zwecke
  und Mittel zur personenbezogenen Datenverarbeitung mit einem anderen
  Verantwortlichen zusammen festlegt. So können Kundendaten von mehreren
  Unternehmen gemeinsam genutzt werden, wobei die jeweiligen Aufgaben und
  Verpflichtungen in einer transparenten Vereinbarung festzulegen sind.
- Der Auftragsverarbeiter (_Processor_) ist ein Dienstleister, der
  personenbezogene Daten im Auftrag eines Verantwortlichen im Rahmen eines
  Auftragverhältnis übernimmt. Er muss die vom Verantwortlichen festgelegten
  Zwecke und Mittel einhalten, wozu diese Pflichten im Rahmen eines AV-Vertrags
  an den Dienstleister weitergegeben werden.
- Der Unterauftragsverarbeiter (_Sub-Processor_) ist ein Dienstleister, der für
  andere Auftragsverarbeiter arbeitet, und für den wiederum die gleichen
  Pflichten gelten, und diese auch an andere Auftragsverarbeiter weitergeben
  kann.
- Der Dritte (_Third Party_) ist ein Aussenstehender, der nicht wie eine der
  oben erwähnten Akteure in eine personenbezogene Datenverarbeitung eingebunden
  ist.
- Der Empfänger (_Recipient_) ist jeder, dem personenbezogene Daten offengelegt
  werden, unabhängig davon, ob er eine dritte Person ist oder nicht.
- Der Datenschutzbeauftragte (_Data Protection Officer_) kümmert sich als
  Ansprechpartner und Anlaufstelle um die Einhaltung von Datenschutzvorschriften
  in einem Unternehmen und ist dabei weisungsfrei. Er sollte bei entsprechenden
  Fragen eingebunden werden.
- Die Aufsichtsbehörde (_Supervisory Authority_) ist eine unabhängige staatliche
  Stelle, welche für die Einhaltung und Durchsetzung der DSGVO verantwortlich
  ist.

Die DSGVO unterscheidet zwischen folgenden Ländern:

- EU-Mitglieds- und EWR-Vertragsstaaten (Island, Norwegen, Liechtenstein), die
  direkt an die DSGVO gebunden sind.
- Drittstaaten, die nicht an die DSGVO gebunden sind, und deren
  Datenschutzniveau von der EU-Kommission eingeschätzt wird:
    - Sichere Drittländer, die über ein mit der DSGVO vergleichbares
      Datenschutzniveau verfügen (z.B. die Schweiz und das Vereinigte
      Königreich).
    - Unsichere Drittländer, deren Datenschutzniveau unter demjenigen der DSGVO
      liegen.

Man unterscheidet zwischen einer Datenübermittlung _1. Stufe_ innerhalb der
direkt an die DSGVO gebundenen Länder und einer Datenübermittlung _2. Stufe_ bei
einer Datenübermittlung mit Drittstaaten.

# Wann ist die DSGVO im Cloud Computing überhaupt anzuwenden?

Bei der DSGVO stellt sich die Frage, ob diese auf einen bestimmten Fall
überhaupt anwendbar ist. In sachlicher Sicht muss hierzu eine Verarbeitung
personenbezogener Daten mit Speicherung vorliegen, für die keine Ausnahme gilt.

Personenbezogene Daten sind alle Informationen, mit der eine Person direkt
identifiziert (z.B. Name, Adresse) oder identifizierbar (z.B. Kundennummer,
Benutzername, IP-Adresse) ist. Hierbei stellt sich die Frage, inwiefern das
Wissen Dritter zur Identifikation notwendig ist (z.B. Auskunft durch eine
Behörde). Für reine Sachdaten (z.B. mathematische Formeln) oder Daten
juristischer Personen sowie Daten verstorbener natürlicher Personen findet die
DSGVO keine Anwendung.

Pseudonymisierte Daten sind weiterhin personenbezogene Daten, wenn die
Informationen zur Identifikation der natürlichen Person weiterhin vorhanden
sind, wenn auch getrennt aufbewahrt werden. Auf anonymisierte Daten, aufgrund
derer nicht mehr auf eine natürliche Person geschlossen werden kann, findet die
DSGVO hingegen keine Anwendung.

Eine Verarbeitung kann manuell oder (teilweise) automatisch erfolgen und
betrifft alle Vorgänge, die sich auf personenbezogene Daten beziehen. Erfolgt
eine Verarbeitung rein zu persönlichen oder familiären Zwecken, gilt die
Haushaltsausnahme, nach der die DSGVO keine Anwendung findet. (Das Hochladen von
Geburtstagsfotos in einen Cloud-Speicher oder das Teilen solcher Bilder in einem
begrenzten Personenkreis fällt dadurch nicht unter die DSGVO.) Geschieht die
Verarbeitung jedoch für wirtschaftliche Zwecke, ist die DSGVO hingegen
anwendbar.

Für die Anwendbarkeit der DSGVO ist nicht der Datenverarbeitungsstandort sondern
eine Niederlassung im EU-Raum ausschlaggebend. Nach dem Marktortprinzip
unterliegt eine Verarbeitung der DSGVO, wenn diese durch eine Niederlassung
innerhalb der EU erfolgt oder Personen betrifft, die sich im EU-Raum aufhalten.

Ein Cloud-Anbieter, der sein eigenes Rechenzentrum als feste Einrichtung
betreibt, gilt als in der EU niedergelassen. Gehören ihm jedoch nur einige
Server in einem Rechenzenter, das nicht von seinen Angestellten betreten wird,
liegt keine Niederlassung vor (Colocation). Bei der Auftragsverarbeitung durch
einen Cloud-Anbieter innerhalb des EU-Raums liegt keine Niederlassung vor.

Werden Angebote für Waren und Dienstleistungen an Personen im EU-Raum angeboten,
oder wird deren Verhalten (zwecks Profilbildung) beobachtet, findet die DSGVO
Anwendung (siehe Google-Spain-Urteil). Ob sich beispielsweise ein Online-Shop an
Personen in der EU richtet, kann von verschiedenen Faktoren abhängen (z.B. die
verwendete TLD, Preisangaben in EU-Währungen, Verwendung europäischer Sprachen
usw.)

# Wann ist die Datenverarbeitung erlaubt? ‒ Zulässigkeit (1. Stufe): Erlaubnistatbestände als Rechtsgrundlage

Ob personenbezogene Daten verarbeiten werden dürfen, ist zunächst eine
Zulässigkeitsprüfung erforderlich. Eine Verarbeitung ist grundsätzlich verboten,
sofern nicht ein Erlaubnistatbestand vorliegt (Verbot mit Erlaubnisvorbehalt).
Es gibt u.a. folgende Erlaubnistatbestände:

- Einwilligung: Die betroffene Person stimmt einer Datenverarbeitung explizit
  zu. Diese Einwilligung ist mit Wirkung auf die Zukunft widerrufbar und bedarf
  keiner besonderen Form. Sie ist nur wirksam, wenn folgende Voraussetzungen
  gegeben sind:
    1. Freiwilligkeit: Es liegt keine Zwangssituation vor.
    2. Bestimmtheit: Die Verarbeitung erfolgt auf einen klar bestimmten Zweck; es
      liegt keine pauschale Einwilligung vor.
    3. Informiertheit: Die betroffene Person wurde in klarer und verständlicher
      Sprache über die Verarbeitung informiert.
    4. Einwilligungsbewusstsein: Die Einwilligung muss explizit erfolgen (Opt-In,
      z.B. durch Betätigung einer Schaltfläche oder Aktivierung einer Checkbox),
      eine Stillschweigende Einwilligung (Opt-Out) ist nichtig.
- Verarbeitung zur Erfüllung eines Vertrags: Zur Auslieferung einer bestellten
  Ware muss beispielsweise die Anschrift verarbeitet werden können; ein
  Vermieter muss die Kontaktdaten eines Mieters beispielsweise an den
  Hausmeister oder an einen Elektriker weitergeben können.
- Verarbeitung zur Erfüllung rechtlicher Verpflichtungen: Eine Firma muss
  beispielsweise aufgrund einer Aufbewahrungspflicht die Lohnabrechnungen
  ehemaliger Mitarbeiter für einige Zeit nach Beendigung des
  Beschäftigungsverhältnisses aufbewahren.
- Verarbeitung zur Wahrung berechtigter Interessen: Ein berechtigtes Interesse
  liegt etwa dann vor, wenn personenbezogene Daten innerhalb einer
  Unternehmensgruppe weitergeleitet werden, oder eine Datenverarbeitung zwecks
  IT-Sicherheit nötig ist. Hierzu müssen folgende Kriterien erfüllt sein:
    1. Der Verantwortliche muss ein berechtigtes Interesse an der
       Datenverarbeitung haben.
    2. Die Datenverarbeitung muss erforderlich sein, d.h. es gibt keine
       milderen Alternativen zur Durchsetzung des gleichen Interesses.
    3. Die Interessen des Berechtigten überwiegen das Schutzbedürfnis des
       Betroffenen.
- Auftragsverarbeitung: Ein Cloud-Anbieter verarbeitet Daten im Auftrag einer
  anderen Person.

Für besonders sensible Daten (z.B. genetische, biometrische oder
Gesundheitsdaten) gibt es spezielle Regelungen, die im jeweiligen Fall zu prüfen
sind.

# Auftragsverarbeitung

Wird die Verarbeitung personenbezogener Daten an einen Cloud-Provider
ausgelagert, spricht man von einer Auftragsverarbeitung. Diese liegt sowohl bei
der Auslagerung einzelner IT-Ressourcen (z.B. Server) und Anwendungen (z.B.
Microsoft 365) als auch bei einer vollständigen Auslagerung von
Geschäftsprozessen (z.B. Lohnbuchhaltung) vor.

Der im Rahmen der Auftragsverarbeitung herbeigezogene Dienstleister entscheidet
dabei nicht über Zwecke und Mittel der Datenverarbeitung, sondern muss sich
dabei nach dem Verantwortlichen richten, der die Datenverarbeitung in Auftrag
gibt. Hat der Verantwortliche beim Betroffenen eine Erlaubnis zur
Datenverarbeitung eingeholt, darf er diese Verarbeitung ohne weitere Absprache
mit dem Betroffenen an einen Auftragsverarbeiter (d.h. an einen Cloud-Anbieter)
weitergeben. Die Verantwortung für den Schutz der Daten des Betroffenen geht
dabei nicht an den Auftragsverarbeiter weiter, sondern verbleibt beim
Verantwortlichen.

Der Auftragsverarbeiter gilt dabei nicht als Dritter, aber als Empfänger der
Daten, der vom Verantwortlichen gegenüber dem Betroffenen auch als solcher in
der Datenschutzerklärung zu benennen, bei Datenschutzauskünften mitzuteilen und
im Verarbeitungsverzeichnis anzugeben ist. Typsische Beispiele für eine
Auftragsverarbeitung sind:

- IT-Outsourcing oder Betreuung der IT-Infrastruktur durch einen Dienstleister
  (z.B. mit Fernzugriff auf personenbezogene Daten).
- Betreuung von Webseiten, Webshops und Analyse der entsprechenden Interaktionen
  durch Agenturen.
- Auslagerung von Datensicherung und -archivierung sowie die Vernichtung
  entsprechender Datenträger.
- Verarbeitung von Kundendaten durch Callcenter aus Marketing- oder zu
  Supportzwecken.
- Scan und Druck von Dokumenten, die personenbezogene Informationen enthalten.

Verarbeitet ein Cloud-Anbieter oder ein sonstiger Dienstleister Daten zu eigenen
Zwecken, liegt keine Auftragsverarbeitung vor. (In diesem Fall ist ein
Erlaubnistatbestand mit dem Betroffenen erforderlich.) Erlangt ein
Sicherheitsdienst, ein Reinigungsunternehmen oder ein Berufsgeheimisträger
(Anwalt, Steuerberater) im Rahmen einer Dienstleistung Zugriff auf
personenbezogene Daten, liegt keine Auftragsverarbeitung vor. Mietet sich ein
Unternehmen in einem Rechenzentrum ein (Colocation), ohne dem Anbieter dabei
Zugriff auf personenbezogene Daten zu gewähren, liegt ebenfalls keine
Auftragsverarbeitung vor.

Ein Auftragsverarbeitungsvertrag (AV-Vertrag) setzt eine sorgfältige Auswahl
eines Auftragsverarbeiters voraus. Dieser muss fachlich geeignet sein und
hinreichende Garantien bieten, dass technische und organisatorische ergriffen
werden, um den Anforderungen der DSGVO zu genügen. (Diese werden vom Anbieter in
einer Liste der technischen und organisatorischen Massnahmen ‒ TOMs ‒
ausgewiesen.) Der AV-Vertrag (Data Processing Agreement, DPA) wird zwischen dem
Verantwortlichen und dem Auftragsverarbeiter abgeschlossen. Bei grossen
Cloud-Anbieter sind das weitgehend standardisierte Verträge, die praktisch
keinen Spielraum für besondere Regelungen bieten, und meist als Zusätze zu den
allgemeinen Geschäftsbedingungen akzeptiert werden:

- Amazon: AWS GDPR Data Processing Addendum
- Google: Data Processing and Security Terms
- Microsoft: Nachtrag zum Datenschutz für Microsoft-Produkte und -Services

Bei kleineren Cloud-Anbietern besteht oftmals mehr Spielraum um den AV-Vertrag
an die jeweiligen Anforderungen der jeweiligen Datenverarbeitung anzupassen.

Im Rahmen eines AV-Vertrags kann auch die Auftragsverarbeitung vonseiten des
Auftragsverarbeiters zu einem Unterauftragnehmer (Subunternehmer) geregelt sein.
Diese Auftragsverarbeitung hat unter den gleichen Bedingungen wie diejenige
zwischen dem Verantwortlichen und dessen Auftragsverarbeiter zu erfolgen.

Grundsätzlich ist der Einsatz von einem Subunternehmer vom Verantwortlichen zu
genehmigen, da eine Einzelgenehmigung jedoch in der Praxis kaum praktikabel ist
(gerade bei grossen Cloud-Anbietern mit sehr vielen Kunden), müssen diesen
oft allgemeine Genehmigungen erteilt werden. Es besteht jedoch die Möglichkeit,
gegen den Einsatz bestimmter Subunternehmer Einspruch zu erheben, wenn hierzu
ein wichtiger Grund vorliegt (z.B. wenn ein Subunternehmer als Konkurrent des
Verantwortlichen Zugriff auf dessen personenbezogene Daten erhält). Grosse
Cloud-Anbieter bieten jedoch oft keine solche Wiederspruchsmöglichkeit.

Bei der Auftragsverarbeitung im Ausland ist der Standort der Datenverarbeitung
relevant. Hier ist zwischen zwei Fällen zu unterscheiden:

1. Innerhalb vom EU-/EWR-Ausland gibt es keine zusätzlichen Anforderungen, da
   diese Weitergaben der DSGVO unterstehen.
2. Beim Austausch mit Drittstaaten gelten besondere Anforderungen an
   internationale Datentransfers; hierbei ist die Einschätzung der EU-Kommission
   an das Datenschutzniveau des jeweiligen Ziellandes ausschlaggebend. (Die
   Schweiz gilt beispielsweise als sicheres Drittland.)

Sind bei einer Datenverarbeitung mehrere Staaten als Standorte involviert, ist
die rechtliche Situation in allen Standorten zu berücksichtigen.

# Gemeinsame Verantwortlichkeit (Joint Control)

Werden personenbezogene Daten von zwei oder mehreren Parteien gemeinsam
verarbeitet, und legen diese (im Gegensatz zur Auftragsverarbeitung) Zwecke und
Mittel dieser Datenverarbeitung gemeinsam fest, spricht man von einer
gemeinsamen Verantwortlichkeit (Joint Control).

Die Abgrenzung gegenüber der Auftragsverarbeitung ist nicht immer klar, da ein
vermeintlicher Auftragsverarbeiter oftmals eigene Zwecke und Mittel zur
Datenverarbeitung hat, wie es beispielsweise bei Google Analytics der Fall ist.
(Google fungiert hier als eigener Verantwortlicher, da es mit der
Datenverarbeitung eigene Ziele verfolgt.)

Die gemeinsamen Verantwortlichen legen neben Mittel und Zwecken auch die
Verteilung der Pflichten untereinander in einer Vereinbarung zwischen den
gemeinsamen Verantwortlichen fest. Diese Vereinbarung orientiert sich inhaltlich
an einer Auftragsverarbeitungsvereinbarung.

# Allgemeine Grundsätze für die Verarbeitung personenbezogener Daten

Im Falle einer zulässigen Verarbeitung personenbezogener Daten ist dabei auf die
folgenden Grundsätze zu achten:

- _Rechtmässigkeit_: Es muss die Erlaubnis des Betroffenen (oder ein sonstiger
  Erlaubnistatbestand) für die Verarbeitung vorliegen.
- _Verarbeitung nach Treu und Glauben_: Die betroffene Person muss Kenntnis von
  einer Verarbeitung haben und über deren Bedingungen informiert werden.
- _Transparenz_: Es muss für den Betroffenen nachvollziehbar sein (z.B. über
  eine Datenschutzerklärung), welche Daten von wem für welche Zwecke verarbeitet
  werden.
- _Zweckbindung_: Die Verarbeitung darf nur für festgelegte, eindeutige und
  legitime Zwecke erfolgen. Ändert sich der Zweck der Verarbeitung, muss der
  Betroffene auf diese einwilligen. (Eine Datenerhebung "auf Vorrat" ist nicht
  zulässig.)
- _Datenminimierung_: Die Verarbeitung soll auf das für den Zweck notwendige
  Mass minimiert sein. Es gilt der Grundsatz der Verhältnismässigkeit, sodass
  nicht das absolute Minimum der Verarbeitung zwingend ist. Hingegen ist zu
  prüfen, ob die Daten zum jeweiligen Zweck auch anonymisiert verarbeitet werden
  könnten.
- _Richtigkeit_: Daten sind auf dem neuesten Stand zu halten; alte Daten sind zu
  berichtigen oder zu löschen.
- _Speicherbegrenzung_: Daten sollen nur so lange gespeichert werden, wie es für
  den jeweiligen Zweck nötig ist.
- _Integrität und Vertraulichkeit_: Eine angemessene Datensicherheit soll durch
  dazu geeignete Massnahmen (Zugangssicherung, verschlüsselte Übertragung,
  periodische Datensicherung) gewährleistet werden. (Da Datensicherungen ein
  legitimes Mittel zur Gewährleistung von Integrität und Vertraulichkeit sind,
  steht ihre Anfertigung nicht im Konflikt zu Datenminimierung und
  Speicherbegrenzung.)
- _Rechenschaftspflicht_: Die Verarbeitungsgrundsätze sind nicht nur
  einzuhalten, sondern auch zu dokumentieren, etwa um die Einhaltung gegenüber
  Aufsichtsbehörden nachweisen zu können. Kann die Einhaltung der DSGVO im
  Schadensfall nicht nachgewiesen werden, werden die Verantwortlichen nicht aus
  der Haftung befreit; Bussgelder drohen.

# Verarbeitungsverzeichnis

Verantwortliche, gemeinsame Verantwortliche und Auftragsverarbeiter müssen die
von ihnen vorgenommenen Verarbeitungen personenbezogener Daten im der
_Dokumentation aller Verarbeitungstätigkeiten_ (kurz: im
_Verarbeitungsverzeichnis_) dokumentieren. Bis auf wenige Ausnahmen (Unternehmen
mit weniger als 250 Beschäftigten, deren Datenverarbeitung keine Risiken birgt,
nur gelegentlich erfolgt und keine besonderen personenbezogenen Daten betrifft)
müssen alle Unternehmen ein solches Verarbeitungsverzeichnis führen.

Das Verarbeitungsverzeichnis dient u.a. zum Nachweis der Einhaltung der DSGVO
gegenüber Aufsichtsbehörden, zum Festhalten der konkreten Rechtsgrundlage und
bildet die Grundlage für die Arbeit des Datenschutzbeauftragten. Das
Verarbeitungsverzeichnis ist nicht öffentlich und muss betroffenen Personen
nicht offengelegt werden. Es muss aber bei Bedarf den Aufsichtsbehörden zur
Verfügung gestellt werden, wobei bei Nichtvorlegung (oder Nichtvorhandensein)
Strafen drohen.

Im Verarbeitungsverzeichnis werden _Verarbeitungstätigkeiten_ ‒ eine Reihe von
Verarbeitungsschritten zur Erfüllung eines gemeinsamen Zwecks (z.B. der
Newsletterversand an Kunden oder die Personalverwaltung) ‒ des Verantwortlichen
abstrakt dokumentiert. Der Detailgrad der Beschreibung ist so zu wählen, dass
das Verarbeitungsverzeichnis für Aussenstehende nachvollziehbar ist. Beim Aufbau
dieser Dokumentation orientiert man sich oftmals anhand konkreter Anwendungen
und Systeme, welche bei der Verarbeitung zum Einsatz kommen.

Für das Verarbeitungsverzeichnis ist die Geschäftsleitung verantwortlich; diese
Verantwortung wird meist jedoch an den Datenschutzbeauftragten weitergereicht,
welcher das Verzeichnis mit den involvierten Fachabteilungen erstellt und
pflegt.

Im Verarbeitungsverzeichnis sind folgende Informationen festzuhalten:

- Name und Kontaktdaten der/des Verantwortlichen und des Datenschutzbeauftragen
  (zwecks Kontaktaufnahme)
- Zwecke der Verarbeitung (z.B. Betrieb eines Online-Shops)
- Kateogrien betroffener Personen (z.B. Webseitenbesucher, Kunden,
  Interessenten)
- Kategorien personenbezogener Daten (z.B. Kundenstammdaten,
  Zahlungsinformationen)
- Kategorien von ‒ internen und externen ‒ Empfängern (Abteilungen,
  Dienstleister, Hoster, Cloud-Anbieter)
- Datenübermittlungen in ein Drittland (z.B. in die USA)
- Löschfristen (falls möglich)
- Beschreibung der technischen und organisatorischen Massnahmen (hilfreich ist
  oft der Bezug auf die TOMs der Auftragsverarbeiter)
- optional: Ergänzende Beschreibung der Verarbeitugnstätigkeit
- optional: Festhalten der Rechtsgrundlage (z.B. Einwilligung des Kunden bei der
  Registrierung im Webshop)
- optional: Dokumentation des Ergebnisses einer Datenschutz-Folgeabschätzung

Es empfiehlt sich bei der Erstellung eines Verarbeitungsverzeichnis auf
Mustervorlagen der jeweiligen Aufsichtsbehörde zurückzugreifen.

Bei gemeinsamen Verantwortlichen müssen nicht beide ein Verarbeitungsverzeichnis
führen. Es empfiehlt sich, diese Verantwortlichkeit unter den gemeinsam
Verantwortlichen zu regeln.

Das Verarbeitungsverzeichnis von Auftragsverarbeitern ist weniger ausführlich
und muss u.a. die Kategorien der Empfänger nicht aufführen, was gerade bei
grossen Cloud-Anbietern kaum praktikabel wäre.
