# Rift in the Flow – README

🧭 System Meta-Repository  
👉 [Deutsche Version](README.md)

This repository documents the overall architecture of a service-based system for automated, document-driven data processing.  
It serves as an entry point for developers, architects, and integrators working with the internal and open components of the system.

It also includes a book that emerged from the development of this project.

---

🚀 Release  
The official product launch is planned for 2025.  
Details on the release and how to use the platform will be announced in due time.

---

📘 Included  
- `SYSTEMARCHITEKTUR.md`: Central architecture overview with Mermaid diagram  
- Component overview: services, interfaces, core and context modules  
- Role separation between open-source and proprietary parts

[![Download PDF – Last Book Version: Rift in the FloRiftw](https://img.shields.io/badge/PDF_Download-Der_Riss_im_Ablauf-blue?style=for-the-badge&logo=readthedocs)](./rift_in_the_flow.pdf)

👉 Note: Depending on your browser, the PDF may open directly.  
To download it, please use the 🔽 download button in the top-right corner of the viewer window.

---

🧱 Component Overview

| Component    | Type         | Description |
|--------------|--------------|-------------|
| `scheduler`  | 🟢 🔷 Service | Creates jobs and triggers workers |
| `worker`     | 🟢 🔷 Service | Executes jobs, loads configuration, and starts workflows |
| `workflow`   | 🟢 ◻️ Library | Stepwise execution of YAML-based workflows |
| `foundation` | 🟢 ◻️ Library | ENV configuration, core models, and status definitions |

🧩 All used modules and steps are defined exclusively via `workflow.yaml`.  
This keeps the logic fully configurable and adaptable – without any code changes.

---

📊 View Diagram  
The system diagram (`SYSTEMARCHITEKTUR.md`) is written in Mermaid format and can be viewed using:

- VS Code: Markdown Preview Enhanced  
- Obsidian  
- [Mermaid Live Editor](https://mermaid.live)

---

🧭 Goals  
- Clear view of architecture and component responsibility  
- Clean separation of open-source and proprietary modules  
- Foundation for documentation, further development, and collaboration

---

# 📘 Rift in the Flow – PDF

This is the official PDF version of the book  
**“Rift in the Flow – Conversations Between System and Soul.”**

## What is this?

This book was created as part of this project. I developed it together with an AI.  
The focus was not only on technical challenges, but also on deeper questions – about systems, truth, responsibility, and being human.

The result is not a guidebook.  
It is an invitation:

> To take responsibility.  
> To look deeper.  
> And maybe – to dare a new beginning.

---

## License

This PDF may be freely shared –  
but **may not be modified or sold**.
