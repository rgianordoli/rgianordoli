# 🐳 MongoDB mit Docker Compose verwalten

## 📁 Voraussetzung

Stelle sicher, dass Docker und Docker Compose installiert sind. MongoDB wird in einem Container mit persistentem Volume betrieben.

## ⚙️ Beispiel `docker-compose.yml`

```yaml
version: "3.8"
services:
  mongo:
    image: mongo:7
    container_name: mongo_local
    restart: unless-stopped
    ports:
      - "27017:27017"
    environment:
      MONGO_INITDB_ROOT_USERNAME: root
      MONGO_INITDB_ROOT_PASSWORD: example
    volumes:
      - mongo_data:/data/db

volumes:
  mongo_data:
```

## ▶️ MongoDB starten

```bash
docker compose up -d
```

## ⏹️ MongoDB stoppen

```bash
docker compose down
```

## ♻️ MongoDB neustarten

```bash
docker compose restart
```

## 🧹 Mongo-Container löschen (inkl. Volume)

```bash
docker compose down -v
```

> ⚠️ Das löscht auch alle gespeicherten Daten!

## 🔌 Verbindung testen

Verbindung (z. B. aus deiner `.env` Datei):

```
MONGO_URI=mongodb://root:example@localhost:27017
```

Testen mit der Mongo Shell:

```bash
docker exec -it mongo_local mongosh -u root -p example
```