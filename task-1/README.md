# MERN + LAMP Docker Project

## What I Did
I created a simple setup where both MERN and LAMP apps run using Docker.

NGINX is used as a reverse proxy:
- /app → React app
- /legacy → PHP app

## How to Run

1. Give permission:
   chmod +x setup.sh

2. Run script:
   ./setup.sh

3. Open browser:
   http://localhost/app
   http://localhost/legacy

## Technologies Used
- Docker
- Docker Compose
- NGINX
- MongoDB
- MySQL
- Node.js
- Apache

## Notes
This is a basic setup to understand containerization and multi-service apps.
