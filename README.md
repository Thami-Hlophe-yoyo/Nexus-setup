# Nexus Repository Manager Setup

This project provides a setup for running the Nexus Repository Manager locally using Docker.

## Project Structure

```
nexus-repo
├── docker
│   └── docker-compose.yml
├── config
│   ├── nexus.properties
│   └── admin.password
├── scripts
│   ├── setup.sh
│   └── backup.sh
├── data
│   └── .gitkeep
├── .env
├── .gitignore
└── README.md
```

## Getting Started

### Prerequisites

- Docker and Docker Compose installed on your machine.

### Setup Instructions

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd nexus-repo
   ```

2. Configure the Nexus Repository Manager by editing the `config/nexus.properties` file as needed.

3. Set the admin password in `config/admin.password`.

4. Run the setup script to start the Nexus Repository Manager:
   ```bash
   ./scripts/setup.sh
   ```

5. Access the Nexus Repository Manager at `http://localhost:8081`.

### Backup Instructions

To create a backup of your Nexus Repository Manager data, run:
```bash
./scripts/backup.sh
```

### License

This project is licensed under the MIT License. See the LICENSE file for details.
