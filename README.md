# reverse_proxy Nginx Demo

A simple microservices setup with two backend services and an Nginx reverse proxy.

## Project Structure

- **service_1**: A Go service running on port 8001
- **service_2**: A Python service running on port 8002
- **nginx**: An Nginx reverse proxy that routes:
  - `/service1` requests to Service 1
  - `/service2` requests to Service 2

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

3. **Health Monitoring:** 
   - Automated health checks ensure each service is ready to handle requests, improving overall system reliability.

## Testing

Run the test script:
```bash
chmod +x test.sh
./testing_script.sh
```