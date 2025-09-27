# Task 2: Simple Jenkins CI/CD Pipeline

## Objective
Set up a basic Jenkins pipeline to automate building and deploying a Node.js application using Docker.

## Tools
- Jenkins
- Docker
- GitHub
- Node.js

## Steps Performed

1. **Installed Jenkins** on Ubuntu WSL and verified it runs at `http://localhost:8080`.
2. **Created a sample Node.js app** (`app.js` and `package.json`).
3. **Created Dockerfile** to containerize the app.
4. **Created a Jenkinsfile** in the project repo:
   - Checkout code from GitHub
   - Build Docker image
   - Stop/remove old container (if exists)
   - Run new container
5. **Configured Jenkins Pipeline Job**:
   - Type: Pipeline
   - Definition: Pipeline script from SCM
   - Repository: `https://github.com/SatishEppili/mydemoapp.git`
   - Branch: `main`
   - Script Path: `Jenkinsfile`
6. **Tested pipeline**: Jenkins successfully built the Docker image and deployed the app.

## Access the App
- After pipeline runs, the app is available at: `http://localhost:3000`
- Verify container is running: `docker ps`
- View logs: `docker logs -f myapp`

## Jenkins Console Output
- Saved console output file: `console-output.txt`
- Pipeline finished successfully:  Build & Deploy stages completed.

## Notes
- Docker Desktop WSL integration enabled for Jenkins access.
- Old containers are automatically removed before deploying new one.

