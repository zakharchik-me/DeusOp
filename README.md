Docker: Containerization of the Application

Objective of the Lab

Build and run a working application with a database in Docker from the source code (any open-source application - Java, Python/Django/Flask, Golang).

Requirements and Verification

The image must be lightweight.

✅ Use alpine-based images to minimize size.

Use minimal base images - alpine.

✅ Ensure the Dockerfile is based on alpine (e.g., FROM python:3.9-alpine).

All application configuration must be done via environment variables.

✅ Check that docker-compose.yml and Dockerfile use ENV or .env files.

Static files (dependencies) should be managed via an external volume.

✅ Ensure docker-compose.yml has volumes defined for static files.

Create a docker-compose file for startup and build.

✅ Ensure docker-compose.yml exists and defines services properly.

Use a database in docker-compose (PostgreSQL, MySQL, MongoDB, etc.).

✅ Confirm a database service is declared in docker-compose.yml.

Ensure automatic migrations are performed on startup.

✅ The entrypoint script or Dockerfile should include a migration command (e.g., flask db upgrade or python manage.py migrate).

The container should run under a non-root user.

✅ Use USER directive in Dockerfile to specify a non-root user.

After installing necessary utilities, the cache should be cleared.

✅ Ensure the Dockerfile contains commands like rm -rf /var/cache/apk/* after package installation.
