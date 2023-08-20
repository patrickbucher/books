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
DSGVO keine Anwendung. Pseudonymisierte Daten sind weiterhin personenbezogene
Daten, wenn die Informationen zur Identifikation der natürlichen Person
weiterhin vorhanden sind, wenn auch getrennt aufbewahrt werden. Auf
anonymisierte Daten, aufgrund derer nicht mehr auf eine natürliche Person
geschlossen werden kann, findet die DSGVO hingegen keine Anwendung. Eine
Verarbeitung kann manuell oder (teilweise) automatisch erfolgen und betrifft
alle Vorgänge, die sich auf personenbezogene Daten beziehen. Erfolgt eine
Verarbeitung rein zu persönlichen oder familiären Zwecken, gilt die
Haushaltsausnahme, nach der die DSGVO keine Anwendung findet. (Das Hochladen von
Geburtstagsfotos in einen Cloud-Speicher oder das Teilen solcher Bilder in einem
begrenzten Personenkreis fällt dadurch nicht unter die DSGVO.) Geschieht die
Verarbeitung jedoch für wirtschaftliche Zwecke, ist die DSGVO hingegen
anwendbar. Für die DSGVO ist nicht der Datenverarbeitungsstandort sondern eine
Niederlassung im EU-Raum ausschlaggebend. Nach dem Marktortprinzip unterliegt
eine Verarbeitung der DSGVO, wenn diese durch eine Niederlassung innerhalb der
EU erfolgt oder Personen betrifft, die sich im EU-Raum aufhalten. Ein
Cloud-Anbieter, der sein eigenes Rechenzentrum als feste Einrichtung betreibt,
gilt als in der EU niedergelassen. Gehören ihm jedoch nur einige Server in einem
Rechenzenter, das nicht von seinen Angestellten betreten wird, liegt keine
Niederlassung vor (Colocation). Bei der Auftragsverarbeitung durch einen
Cloud-Anbieter innerhalb des EU-Raums liegt keine Niederlassung vor. Werden
Angebote für Waren und Dienstleistungen an Personen im EU-Raum angeboten, oder
wird deren Verhalten (zwecks Profilbildung) beobachtet, findet die DSGVO
Anwendung (siehe Google-Spain-Urteil). Ob sich beispielsweise ein Online-Shop an
Personen in der EU richtet, kann von verschiedenen Faktoren abhängen (z.B. die
verwendete TLD, Preisangaben in EU-Währungen, Verwendung europäischer Sprachen
usw.)
