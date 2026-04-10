# Rahbar AI: Smart City Emergency Dispatch
**Track:** Smart Cities & IoT

Rahbar AI is a real-time, IoT-driven command center for emergency fleet dispatch. It moves away from passive GPS monitoring to active traffic management by creating "Green Wave" routes—pre-empting traffic signals to clear paths for ambulances.

## 🚀 Features
* **Live Geospatial Tracking:** Real-time location mapping of the active fleet using Leaflet.js.
* **Dynamic Routing Algorithm:** Calculates the fastest route and pre-empts simulated traffic lights.
* **LLM Dispatch Assistant:** Natural language AI command center for operators.

## 💻 Tech Stack
* **Backend:** Python, FastAPI, WebSockets
* **Frontend:** HTML5, CSS3 (Dark UI), Vanilla JS
* **AI:** Anthropic Claude / LLM Integration

## 🛠️ How to Run Locally (For Judges)
If you would like to run the simulation locally on your machine:

1. Clone this repository.
2. Install the required Python packages:
   `pip install fastapi uvicorn websockets`
3. Create a `.env` file in the root directory and add your API key:
   `ANTHROPIC_API_KEY=your_key_here`
4. Start the server:
   `python main.py`
5. Open `index.html` in any web browser.
