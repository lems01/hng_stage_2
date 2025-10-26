# 🚀 Blue/Green Deployment with Nginx

## Overview
This setup demonstrates a **Blue/Green deployment** behind **Nginx** using Docker.  
It allows seamless switching between Blue and Green versions of a Node.js service using environment-based routing.

## 🧱 Project Structure
```
├── docker-compose.yml
├── nginx.conf.template
├── entrypoint.sh
├── .env.example
└── DECISION.md
```

## ⚙️ Prerequisites
- Docker & Docker Compose installed
- `.env` file created from `.env.example`

## 🚦 How to Run
```bash
# Clone the repo
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>

# Copy environment variables
cp .env.example .env

# Run the setup
docker compose up -d
```

Visit [http://localhost](http://localhost) to confirm access.  
You’ll see which service (Blue or Green) is active.

## 🔄 Switching Between Blue & Green
Update the active target in `.env`:
```bash
ACTIVE_SERVICE=green
```
Then reload:
```bash
docker compose restart nginx
```

## 🧪 Health Check & Failover
The Nginx config includes simple health checks for both Blue and Green.  
If the active service fails, traffic automatically falls back to the healthy one.

## 🧰 Image Info
- **Blue:** `yimikaade/wonderful:devops-stage-two`
- **Green:** `yimikaade/wonderful:devops-stage-two`
