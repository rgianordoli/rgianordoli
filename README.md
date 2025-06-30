# 🧭 System-Metarepository

👉 [English Version](README_EN.md)

Dieses Repository dokumentiert die Gesamtarchitektur eines servicebasierten Systems zur automatisierten, dokumentenbasierten Datenverarbeitung.  
Es dient als Einstiegspunkt für Entwickler, Architekten und Integratoren, die mit den internen und offenen Komponenten des Systems arbeiten.

Es beinhaltet auch ein Buch, das im Rahmen dieses Projekts entstanden ist.

---


# 🚀 Veröffentlichung
Der offizielle Produkt-Launch ist für das Jahr 2025 geplant.
Details zur Veröffentlichung sowie zur Nutzung der Plattform werden rechtzeitig bekannt gegeben.

---

## 📘 Enthalten

- [`SYSTEMARCHITEKTUR.md`](./SYSTEMARCHITEKTUR.md): Zentrale Architekturübersicht mit Mermaid-Diagramm
- Komponentenbeschreibung: Dienste, Schnittstellen, Kern- und Kontextmodule
- Rollentrennung zwischen Open-Source- und proprietären Bestandteilen


[![Download PDF – Letzte Buch-Version: Der Riss im Ablauf](https://img.shields.io/badge/PDF_Download-Der_Riss_im_Ablauf-blue?style=for-the-badge&logo=readthedocs)](./der_riss_im_ablauf.pdf)

👉 Hinweis: Je nach Browser wird das PDF direkt geöffnet.  
Um es herunterzuladen, bitte den **🔽 Download-Button oben rechts im Fenster** verwenden.

---

## 🧱 Komponentenübersicht

| Komponente   | Typ         | Beschreibung |
|--------------|-------------|--------------|
| `scheduler`  | 🟢 🔷 Service | Erzeugt Jobs und triggert Worker |
| `worker`     | 🟢 🔷 Service | Führt Jobs aus, lädt Konfiguration und startet Workflows |
| `workflow`   | 🟢 ◻️ Bibliothek | Führt YAML-basierte Workflows schrittweise aus |
| `foundation` | 🟢 ◻️ Bibliothek | ENV-Konfiguration, zentrale Modelle und Statusdefinitionen |


🧩 Die verwendeten Module und Schritte werden ausschließlich über workflow.yaml definiert.
Dadurch bleibt die Logik vollständig konfigurierbar und anpassbar – ohne zusätzliche Codeanpassung.

---

## 📊 Diagramm anzeigen

Das Systemdiagramm (`SYSTEMARCHITEKTUR.md`) ist im Mermaid-Format und kann angezeigt werden mit:

- **VS Code**: Markdown Preview Enhanced
- **Obsidian**
- [Mermaid Live Editor](https://mermaid.live)

---

## 🧭 Zielsetzung

- Klare Sicht auf Architektur und Komponentenverantwortung
- Saubere Trennung von Open-Source und proprietären Modulen
- Grundlage für Dokumentation, Weiterentwicklung und Zusammenarbeit

---

# 📘 Der Riss im Ablauf – PDF

Dies ist die offizielle PDF-Version des Buches  
**„Der Riss im Ablauf – Gespräche zwischen System und Seele“**.

## Was ist das?

Dieses Buch ist im Rahmen dieses Projekts entstanden. Ich habe es gemeinsam mit einer KI entwickelt.  
Dabei standen nicht nur technische Herausforderungen im Vordergrund, sondern auch tiefgehende Fragen – über Systeme, Wahrheit, Verantwortung und Menschsein.

Das Ergebnis ist kein Ratgeber.  
Es ist eine Einladung:

> In die Eigenverantwortung zu gehen.  
> In die Tiefe zu schauen.  
> Und vielleicht – einen neuen Anfang zu wagen.

---

## Lizenz

Dieses PDF darf frei weitergegeben werden –  
aber **nicht verändert oder verkauft**.
