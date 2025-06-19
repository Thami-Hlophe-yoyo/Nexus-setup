# Setup script for Nexus Repository Manager
Write-Host "Setting up Nexus Repository Manager..."

# Check if Docker is running
try {
    docker info > $null
} catch {
    Write-Error "Docker is not running. Please start Docker and try again."
    exit 1
}

# Navigate to docker directory
Set-Location -Path (Join-Path $PSScriptRoot "..\docker")

# Start Nexus container using docker-compose
Write-Host "Starting Nexus container..."
docker-compose up -d

Write-Host "Waiting for Nexus to start... This may take a few minutes."
Start-Sleep -Seconds 30

Write-Host "Nexus is starting up. You can access it at http://localhost:8081"
Write-Host "Initial admin password can be found at: ../data/admin.password once Nexus is fully started"
Write-Host "Default username is: admin"