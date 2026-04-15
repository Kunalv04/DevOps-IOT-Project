Pipeline FLow Dagram

Code Push
   ↓
Lint
   ↓
Test
   ↓
Build Docker Images
   ↓
Push to Docker Hub
   ↓
Deploy to Staging

If deployment fails:
1. Pull previous stable Docker image
2. Run docker-compose again

Example:
docker pull username/backend
docker-compose up -d