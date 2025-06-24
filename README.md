# Microservices Demo

A simple microservices setup with two backend services and an Nginx reverse proxy.

## Setup Instructions

1. Install Docker and nginx
2. create docker file for services and nginx
3. create a docker_compose.yml file to Orchestrates three containers: nginx, service1, and service2
4. edit the nginx.conf file to  act as a reverse proxy which routes traffic based on URL paths
6. Run the services:
   ```bash
   docker-compose up --build
   ```

## How It Works

### Routing
- All services are accessible through port 8080
- Routes are configured as follows:
  - `/service1/*` → Service 1 (port 8001)
  - `/service2/*` → Service 2 (port 8002)

### Available Endpoints
For each service:
- `/ping` - Health check endpoint
- `/hello` - Sample greeting endpoint

## Bonus Features

1. **Docker Setup**
   - Multi-stage builds for smaller images
   - Health checks for all services
   - Proper service dependencies

2. **Testing**
   - Included test script (`testing_script.sh`)
   - Health check endpoints
   - Easy to extend for more comprehensive testing

## Testing

Run the test script:
```bash
chmod +x test.sh
./testing_script.sh
```