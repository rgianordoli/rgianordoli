# SYSTEMARCHITEKTUR.md

## 🧭 Zweck der Architektur

Dieses System ist darauf ausgelegt, dokumentenbasierte Prozesse (z. B. OCR, Klassifikation, Datenextraktion) in einer modularen, workflowgesteuerten Umgebung auszuführen.  
Die Architektur erlaubt sowohl proprietäre als auch Open-Source-Workflows und ist auf maximale Erweiterbarkeit, Testbarkeit und Rollentrennung ausgelegt.

---

## 🧱 Komponentenübersicht

```mermaid
flowchart TD
    Scheduler["**scheduler 🟢 🔷**<br/>erzeugt Jobs<br/>Startsignale an worker"]
    Worker["**worker 🟢 🔷**<br/>führt Jobs aus<br/>nutzt interfaces_core"]
    Workflow["**workflow 🟢 ◻️**<br/>führt YAML-basierte<br/>Workflows aus"]

    Foundation["**foundation 🟢 ◻️**<br/>rollenspezifische<br/>Konfiguration,<br/>Modelle"]

    InterfacesCore["**interfaces_core 🟢 ◻️**<br/>offene Schnittstellen"]
    InterfacesInternal["**interfaces_internal 🔴 ◻️**<br/>Proprietäre Schnittstellen"]
    InterfacesContext["**interfaces_context 🟢 ◻️**<br/>Kontext-Interfaces"]

    Context["**context 🔴 ◻️**<br/>Konkrete Kontext-Implementierung"]
    Core["**core_proprietary 🔴 ◻️**<br/>interne Implementierungen"]
    CoreOS["**core_open_source 🟢 ◻️**<br/>für open source protocols"]
    CoreEXTERNAL["**external 🔴 ◻️**<br/>für externe Systeme"]

    Scheduler --> Worker
    Scheduler --> Foundation
    Worker --> Workflow
    Worker --> Foundation

    Workflow --> InterfacesCore
    Workflow --> InterfacesInternal
    Workflow --> InterfacesContext
    Workflow --> Foundation
    Workflow --> Context

    Context --> InterfacesContext

    Core -.-> InterfacesInternal
    CoreOS -.-> InterfacesCore
    CoreEXTERNAL -.-> InterfacesInternal
    Workflow -.-> Core
    Workflow -.-> CoreOS
    Workflow -.-> CoreEXTERNAL

    classDef service stroke:#00796b,stroke-width:4px;
    classDef lib stroke-dasharray: 5 5;

    class Scheduler,Worker service;
    class Workflow,Foundation,InterfacesCore,InterfacesInternal,InterfacesContext,Context,Core,CoreOS,CoreEXTERNAL lib;
```

---

### Legende

- 🔷 = Laufender Service  
- ◻️ = Bibliothek / passive Komponente  
- 🟢 = Open Source  
- 🔴 = Proprietär  
- ➝ = Compile-Zeit-Referenz (Import)  
- ╌➝ = Laufzeit-Injektion über DI (Dependency Injection)

---

## ⚙️ Konfigurierbarkeit

- Das System wird über **ENV-Variablen** konfiguriert.
- `foundation` verarbeitet ENV-Parameter über `pydantic.BaseSettings`.
- Fehlende Pflicht-ENV führen zu validem Startfehler mit klarer Diagnose.

---

## 🧪 Testbarkeit

- Komponenten sind testbar durch klare Schnittstellen und Abhängigkeitseinbringung (DI).
- Isoliertes Testen über `Mock`, `Fake` oder alternative Kontexte möglich.