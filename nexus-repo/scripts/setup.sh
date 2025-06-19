#!/bin/bash

# This script automates the setup process for the Nexus Repository Manager.

# Pull the latest Nexus Repository Manager Docker image
docker pull sonatype/nexus3

# Start the Nexus Repository Manager using Docker Compose
docker-compose -f ../docker/docker-compose.yml up -d

echo "Nexus Repository Manager setup completed. Access it at http://localhost:8081"