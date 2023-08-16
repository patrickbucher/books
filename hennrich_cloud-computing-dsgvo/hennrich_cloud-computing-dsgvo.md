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

