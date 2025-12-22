# 🌊 AquaEyes Backend

AquaEyes is an advanced flood detection and water level monitoring system. This backend serves as the central hub for a distributed network of IoT devices, handling real-time sensor data, sophisticated alerting, and device management.

## 🚀 Key Features

*   **IoT Device Management**: Complete API suite for registering and managing distributed sensor nodes.
*   **Real-time Data Processing**: Integrated MQTT service for low-latency sensor data ingestion.
*   **Intelligent Alerting**: Automated alert generation based on configurable thresholds (Water Level, Flow Rate, Rainfall, Soil Moisture).
*   **Live Data Streaming**: Real-time updates via Socket.IO for immediate UI response.
*   **Data Simulation**: Robust simulator for testing various flood scenarios and historical data generation.

---

## 🛠️ Getting Started

### Prerequisites

*   **Node.js**: v14.x or higher
*   **MongoDB**: Local installation or MongoDB Atlas URI
*   **MQTT Broker**: HiveMQ, Mosquitto, or similar (supports MQTT over SSL/TLS)

### Installation

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/h3llohihi/AquaEyes-Backend.git
    cd AquaEyes-Backend
    ```

2.  **Install Dependencies**:
    ```bash
    npm install
    ```

3.  **Environment Setup**:
    Copy the example environment file and fill in your credentials:
    ```bash
    cp .env.example .env
    ```

### Database Initialization

Seed the database with a prototype device:
```bash
npm run seed
```

---

## 📜 Available Scripts

| Script | Description |
| :--- | :--- |
| `npm start` | Run the application in production mode |
| `npm run dev` | Run with `nodemon` for development |
| `npm run seed` | Seed initial device data to MongoDB |
| `npm run simulate` | Start the IoT data simulator (normal mode) |
| `npm run simulate:warning` | Simulate "Warning" level sensor readings |
| `npm run simulate:critical` | Simulate "Critical" level sensor readings |
| `npm run simulate:flood` | Simulations for a full flood event |
| `npm run simulate:history` | Generate 2 days of historical data for testing |

---

## 🏗️ Project Structure

```text
AquaEyes-Backend/
├── public/             # Static assets
├── scripts/            # Utility & Simulation scripts
├── src/
│   ├── config/         # App & DB configurations
│   ├── controllers/    # API request handlers
│   ├── models/         # Mongoose schemas
│   ├── routes/         # API endpoint definitions
│   ├── services/       # Business logic (MQTT, etc.)
│   └── app.js          # Entry point
├── utils/              # Shared helper functions
└── README.md
```

---

## 📡 Data Simulation

The project includes a powerful simulator to test the dashboard and alerting logic without physical hardware.

**Run the default simulator:**
```bash
npm run simulate
```

**Run specific scenarios:**
- **Warning State**: `npm run simulate:warning` (Sensors approach danger thresholds)
- **Critical State**: `npm run simulate:critical` (Triggers immediate critical alerts)
- **Flood Event**: `npm run simulate:flood` (Simulates a storm and rising water levels)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
