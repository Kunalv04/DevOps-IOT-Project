# DevOps IoT Project (Beginner-Friendly)

## 📌 Overview

This project simulates a simple on-premise setup where both modern and legacy applications run together. The goal was to understand how to containerize applications, automate deployments using CI/CD, and apply basic security practices.

The project is divided into 3 tasks:

* **Task 1** → Containerized application deployment
* **Task 2** → CI/CD pipeline
* **Task 3** → Basic networking and security

---

## 📁 Project Structure

```id="b3d42l"
DevOps-IOT-Project/
│
├── task-1/
│   ├── backend/
│   │   ├── Dockerfile
│   │   └── server.js
│   │
│   ├── frontend/
│   │   ├── Dockerfile
│   │   └── package.json
│   │
│   ├── lamp/
│   │   ├── Dockerfile
│   │   └── index.php
│   │
│   ├── docker-compose.yml
│   ├── nginx.conf
│   ├── setup.sh
│   └── Readme.md
│
├── task-2/
│   └── ci_cd.yml
│
├── task-3/
│   ├── iptables.sh
│   └── Network-Flow
│
└── README.md
```

---

## 🧱 Architecture

The project combines:

### MERN Stack

* React (frontend)
* Node.js + Express (backend)
* MongoDB

### LAMP Stack

* Apache + PHP
* MySQL

### Reverse Proxy

* NGINX routes traffic:

  * `/app` → frontend
  * `/api` → backend
  * `/legacy` → LAMP app

---

## ⚙️ Task 1: Containerized Deployment

* Used Docker and Docker Compose
* Each component (backend, frontend, lamp) has its own Dockerfile
* docker-compose is used to run all services together
* NGINX is used as a reverse proxy

### How to run

```bash
cd task-1
chmod +x setup.sh
./setup.sh
```

Access:

* `/app` → Frontend
* `/api` → Backend
* `/legacy` → PHP app

---

## 🔄 Task 2: CI/CD Pipeline

Pipeline is implemented using GitHub Actions

### Stages:

### 1. Test

* Backend tested using API call
* Frontend build tested
* Code quality checked using SonarQube Cloud

### 2. Build

* Docker images built using docker-compose
* Images pushed to Docker Hub

### 3. Deploy

* Application deployed using docker-compose

---

## 🔐 Task 3: Networking & Security

### 🔒 1. Firewall (iptables)

A basic firewall script is used:

* Allowed:

  * SSH (22)
  * HTTP (80)
  * HTTPS (443)

* Blocked:

  * MongoDB (27017)
  * MySQL (3306)

👉 This prevents direct access to databases from outside.

---

### 🔁 2. Network Flow

```id="j61o8h"
IoT Device
   │ (BLE)
   ▼
BLE Gateway
   │
   ▼
NGINX (Reverse Proxy)
   │
   ├── /app → Frontend
   ├── /api → Backend
   └── /legacy → Apache
   │
   ▼
Databases
   ├── MongoDB (27017)
   └── MySQL (3306)
```

---

### 🔐 3. NGINX Configuration

* Routes traffic based on path
* Basic rate limiting applied:

  * 10 requests per second per IP

👉 Helps in handling traffic and basic protection

---

## ⚠️ Assumptions

* This is a local/on-prem simulation
* Basic security implemented for learning
* No HTTPS (only HTTP used)
* Deployment is not persistent

---

## 🔄 Trade-offs

* Used simple firewall rules
* No SSL/TLS setup
* No advanced testing frameworks
* Used basic Docker setup instead of Kubernetes

---

## 🚀 What I Learned

* Containerizing multiple services
* Using reverse proxy with NGINX
* Building CI/CD pipelines with GitHub Actions
* Applying basic firewall rules
* Understanding request flow in applications

---

## 🔧 Future Improvements

* Add HTTPS using SSL certificates
* Improve firewall with stricter rules
* Add proper testing frameworks
* Use versioned Docker images
* Deploy to real server

---

## 🙌 Final Note

This project focuses on learning DevOps fundamentals in a simple and practical way. The goal was to understand concepts step-by-step rather than building a production-ready system.
