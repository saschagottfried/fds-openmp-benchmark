# Motivation

Status Quo
* Projektordner aggregiert alle im Projektverlauf erstellten Ressourcen
* Der Hauptteil der Daten wurden von FDS bzw. von Smokeview generiert
* In Word- und Excel-Dokumenten werden die Ergebnisse aufbereitet und dokumentiert
* Strukturierung durch Dateinamen, Datumsangaben und Ordner-Hierarchien

Welche Fragen kann ein Projektordner nicht beantworten?
* Sind die Resultate und Erkenntnisse reproduzierbar?
* Ist die Modellentwicklung nachvollziehbar?


# Ansatz

Isolierte, reproduzierbare Umgebungen für die jeweiligen Rollen an einem Projekt
* Fire Safety Engineer
* Data Scientist
* Ops Engineer / Adminstrator


## Role Working Environment
Jede Rolle verwendet den aktuellen Stand der Projektressourcen innerhalb der jeweiligen Arbeitsumgebung und sichert umgehend die Ergebnisse seiner Arbeit, so dass andere Personen diese Ressourcen ohne weitere Interaktion nutzen können. Dabei entsteht eine Historie der Änderungen, die Nachvollziehbarkeit gewährt.


## Ziele

Ein Ziel dieser Methode ist die Minimierung von Reibungsverlusten, sowie das Ermöglichen von Teamarbeit.
Es ermöglicht Anfängern einen leichten Einstieg in das Thema unter Beibehaltung ihrer gewohnten Arbeitsumgebung. Teams können von diesem Ansatz profitieren, da die Methode viele Fragen überflüssig macht, die sonst zwingend zu beantworten sind.

Der vorgestellte Ansatz liefert keine Antwort auf Fragen zur Erschließung von leistungsfähigeren Ressourcen für Simulationen.  


## Trade-Offs

Ein Working Environment benötigt Software zur Kommunikation mit dem Repository. Eine Rolle, die FDS Simulationen starten möchte, benötigt viel Arbeitsspeicher (RAM), wenn die isolierte Umgebung auf lokalen Ressourcen laufen soll. Aktuell ist für eine ausreichende Menge Arbeitsspeicher (auch 16 GB) keine größere Investition notwendig.


