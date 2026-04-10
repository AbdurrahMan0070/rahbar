# 🚨 Rahbar — Smart Emergency Dispatch System

> AI-powered emergency dispatch with live map, real-time fleet tracking, Claude AI decisions, and traffic signal pre-emption. Built for hackathon 2025.

---

## ⚡ Quick Start (3 steps)

### 1. Set your Anthropic API key
```bash
export ANTHROPIC_API_KEY=sk-ant-YOUR_KEY_HERE
```

### 2. Install dependencies
```bash
cd backend
pip install -r requirements.txt
```

### 3. Run
```bash
# From the citypulse/ folder:
bash start.sh

# OR manually:
cd backend
python3 main.py
```

Then open **http://localhost:8000** in your browser. That's it.

---

## 🏗 Project Structure

```
citypulse/
├── backend/
│   ├── main.py            # FastAPI server (ALL backend logic here)
│   └── requirements.txt
├── frontend/
│   └── index.html         # Full frontend (served by FastAPI)
├── start.sh               # One-command startup
└── README.md
```

---

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Serves the frontend |
| WS | `/ws` | WebSocket — live unit movement, signals, log |
| GET | `/api/status` | System health + unit counts |
| GET | `/api/units` | All ambulance positions + status |
| GET | `/api/incidents` | Active incidents |
| GET | `/api/hospitals` | Hospital capacity + ER wait times |
| GET | `/api/signals` | Traffic signal states |
| GET | `/api/log` | Dispatch log (last 100 entries) |
| POST | `/api/incidents` | Report a new incident → auto-assigns unit |
| POST | `/api/ai/dispatch` | Claude AI dispatch recommendation |
| POST | `/api/ai/chat` | Natural language command to Claude |
| GET | `/api/optimize-route` | Route optimization for a unit → incident |
| GET | `/api/analytics` | Today's stats |

---

## ✨ Features

- **Live WebSocket updates** — ambulances move on the map every 2 seconds in real-time
- **Claude AI Smart Dispatch** — analyzes all incidents, units, hospitals and recommends tactical dispatch
- **AI Chat** — type natural language: *"send nearest unit to Bandra"*, *"what's AMB-02 status?"*
- **New Incident form** — auto-assigns nearest available unit, calculates ETA
- **Traffic signal pre-emption** — green-wave corridor activated on AI dispatch
- **Hospital routing** — shows nearest hospital for each incident
- **Dispatch log** — live feed of all system events
- **Analytics endpoint** — incident counts, response times, fuel savings

---

## 🎯 Hackathon Judging Points

| Criteria | What we built |
|----------|--------------|
| AI/ML | Claude AI for dispatch decisions + natural language commands |
| Real-time | WebSocket live updates, animated ambulances |
| Impact | Emergency response time reduction (measurable via analytics) |
| Tech stack | FastAPI + WebSockets + Leaflet.js + Anthropic API |
| UX | Dark command-center UI, incident panel, signal panel, AI log |
| Working prototype | Fully functional — not just a demo |
