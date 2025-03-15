## **Docker: Containerization of the Application**

### **Objective of the Lab**
Build and run a working application with a database in Docker from the source code (any open-source application - Java, Python/Django/Flask, Golang).

### **Requirements and Verification**
1. **The image must be lightweight.**
   - ✅ `alpine`-based images to minimize size.

2. **Use minimal base images - `alpine`.**
   - ✅ `Dockerfile` is based on `alpine` (e.g., `FROM python:3.9-alpine`).

3. **All application configuration must be done via environment variables.**
   - ✅ `docker-compose.yml` and `Dockerfile` use `ENV` or `.env` files.

4. **Static files (dependencies) should be managed via an external `volume`.**
   - ✅ `docker-compose.yml` has `volumes` defined for static files.

5. **Create a `docker-compose` file for startup and build.**
   - ✅ `docker-compose.yml` exists and defines services properly.

6. **Use a database in `docker-compose` (PostgreSQL, MySQL, MongoDB, etc.).**
   - ✅ Database service is declared in `docker-compose.yml`.

7. **Ensure automatic migrations are performed on startup.**
   - ✅ The entrypoint script or Dockerfile include a migration command (`python setup.py migrate`).

8. **The container should run under a non-root user.**
   - ✅ `USER` directive in `Dockerfile` to specify a non-root user.

9. **After installing necessary utilities, the cache should be cleared.**
   - ✅ Dockerfile contains commands like `rm -rf /var/cache/apk/*` after package installation.
