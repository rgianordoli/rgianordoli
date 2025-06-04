# 🧭 System-Metarepository

Dieses Repository dokumentiert die Gesamtarchitektur eines servicebasierten Systems zur automatisierten, dokumentenbasierten Datenverarbeitung.  
Es dient als Einstiegspunkt für Entwickler:innen, Architekt:innen und Integrator:innen, die mit den internen und offenen Komponenten des Systems arbeiten.

---

## 📘 Enthalten

- [`SYSTEMARCHITEKTUR.md`](./SYSTEMARCHITEKTUR.md): Zentrale Architekturübersicht mit Mermaid-Diagramm
- Komponentenbeschreibung: Dienste, Schnittstellen, Kern- und Kontextmodule
- Beschreibung der Rollentrennung zwischen Open-Source- und proprietären Bestandteilen

---

## 🧱 Komponentenübersicht (aus dem Architekturdiagramm)

| Komponente           | Typ         | Beschreibung |
|----------------------|-------------|--------------|
| `scheduler`          | 🟢 🔷 Service | Erzeugt Jobs und triggert Worker |
| `worker`             | 🟢 🔷 Service | Führt Jobs aus, lädt Konfiguration und startet Workflows |
| `workflow`           | 🟢 ◻️ Bibliothek | Führt YAML-basierte Workflows schrittweise aus |
| `foundation`         | 🟢 ◻️ Bibliothek | Zentrale ENV-Konfiguration, Rollen, Status, Modelle |
| `interfaces_core`    | 🟢 ◻️ Interface | Offene, standardisierte Schnittstellen (Open Source) |
| `interfaces_internal`| 🔴 ◻️ Interface | Interne, proprietäre Schnittstellen für spezifische Erweiterungen |
| `interfaces_context` | 🟢 ◻️ Interface | Schnittstellen zur Arbeit mit Kontextobjekten |
| `context`            | 🔴 ◻️ Bibliothek | Implementiert das kontextuelle Datenmodell zur Workflow-Ausführung |
| `core_proprietary`   | 🔴 ◻️ Bibliothek | Interne Protokoll- und Logikimplementierungen |
| `core_open_source`   | 🟢 ◻️ Bibliothek | Open-Source-kompatible Implementierungen |
| `external`           | 🔴 ◻️ Adapter | Anbindung externer Systeme (z. B. OCR, GPT, Datenbanken) |

---

## 📊 Diagramm anzeigen

Das Systemdiagramm ist im Mermaid-Format hinterlegt (`SYSTEMARCHITEKTUR.md`) und kann z. B. angezeigt werden mit:

- **VS Code**: Markdown Preview Enhanced Plugin
- **Obsidian**
- [Mermaid Live Editor](https://mermaid.live)

---

## 🧭 Zielsetzung

- Klare Sicht auf Architektur und Komponentenverantwortung
- Trennung zwischen Open-Source- und proprietären Modulen
- Grundlage für zukünftige Erweiterung, Dokumentation und Zusammenarbeit

