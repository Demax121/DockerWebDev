# DevStack - Full Stack Development Environment

A comprehensive Docker-based development stack featuring a Vue.js frontend, PHP backend, PostgreSQL database, and Caddy web servers for a complete web application development environment.

## 🏗️ Architecture

This project consists of multiple containerized services:

- **Frontend**: Vue.js 3 application with Vite build tool
- **Backend**: PHP application server with PostgreSQL integration
- **Database**: PostgreSQL with pgAdmin for database management
- **Web Servers**: Caddy servers for backend API and CDN services
- **CDN**: Static asset delivery service

## 📦 Services

### Frontend (Vue.js)
- **Port**: 5173
- **Framework**: Vue.js 3 with Vite
- **Features**: Hot reload, SCSS support, Pinia state management
- **Location**: `./frontend/`

### Backend (PHP)
- **Port**: 6969
- **Server**: Caddy with PHP-FPM
- **Database**: PostgreSQL integration
- **Location**: `./backend/`

### Database
- **PostgreSQL**: Port 5432
- **pgAdmin**: Port 5050 (Database management UI)
- **Location**: `./postgreSQL/`

### CDN
- **Port**: 9091
- **Purpose**: Static asset delivery
- **Location**: `./CDN/`

## 🚀 Getting Started

### Prerequisites
- Docker
- Docker Compose

### Environment Setup

1. Create a `.env` file in the root directory with the following variables:

```env
# Database Configuration
POSTGRES_USER=your_db_user
POSTGRES_PASSWORD=your_db_password
POSTGRES_DB=basePostgresDB

# pgAdmin Configuration
PGADMIN_EMAIL=admin@example.com
PGADMIN_PASSWORD=admin_password

# Frontend Configuration
PORT_REFERENCE=5173
HOST_REFERENCE=0.0.0.0
```

### Running the Application

1. Clone the repository:
```bash
git clone <repository-url>
cd devStack
```

2. Start all services:
```bash
docker-compose up -d
```

3. Access the applications:
   - **Frontend**: http://localhost:5173
   - **Backend API**: http://localhost:6969
   - **pgAdmin**: http://localhost:5050
   - **CDN**: http://localhost:9091

### Development Mode

For development with hot reload:
```bash
docker-compose up
```

## 📁 Project Structure

```
devStack/
├── docker-compose.yml          # Main orchestration file
├── .env                       # Environment variables (create this)
├── frontend/                  # Vue.js application
│   ├── src/                  # Source code
│   ├── public/               # Static assets
│   ├── package.json          # Node.js dependencies
│   └── frontend.Dockerfile   # Frontend container
├── backend/                   # PHP backend
│   ├── php/                  # PHP source code
│   ├── Caddyfile            # Caddy server configuration
│   ├── caddy-server.Dockerfile
│   └── php-manager.Dockerfile
├── postgreSQL/               # Database setup
│   ├── init.sql             # Database initialization
│   ├── postgresDB.Dockerfile
│   └── pgAdmin.Dockerfile
└── CDN/                      # Content delivery
    ├── assets/              # Static assets
    ├── Caddyfile           # CDN server configuration
    └── caddy-cdn.Dockerfile
```

## 🛠️ Development

### Frontend Development
```bash
cd frontend
npm install
npm run dev
```

### Backend Development
The PHP files are mounted as volumes, so changes are reflected immediately.

### Database Management
Access pgAdmin at http://localhost:5050 to manage your PostgreSQL database.

## 🔧 Configuration

- **Frontend**: Configure Vite settings in `frontend/vite.config.js`
- **Backend**: Modify Caddy configuration in `backend/Caddyfile`
- **Database**: Initialize with custom SQL in `postgreSQL/init.sql`
- **CDN**: Configure asset serving in `CDN/Caddyfile`

### Common Issues

1. **Port conflicts**: Ensure ports 5173, 6969, 5432, 5050, and 9091 are available
2. **Environment variables**: Make sure `.env` file is properly configured
3. **Docker permissions**: Ensure Docker daemon is running with proper permissions

### Logs
View service logs:
```bash
docker-compose logs [service-name]
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy coding! 🚀**
