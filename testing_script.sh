#!/bin/bash

echo "Testing Service 1..."
sudo curl -s http://localhost:8080/service1/ping 
sudo curl -s http://localhost:8080/service1/hello 

echo -e "\nTesting Service 2..."
sudo curl -s http://localhost:8080/service2/ping 
sudo curl -s http://localhost:8080/service2/hello 
 