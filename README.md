## **Docker: Multistage, Build, and Run**

### **Lab Goal**
The goal of this lab is to master the approach of creating a lightweight image by building an application on one image and running it on another. It is recommended to use any open-source application that requires compilation (Java, C/C++, Golang, Node).

### **Requirements**
1. The image must be lightweight.
2. Use base lightweight images - Alpine.
3. The application must be built in the first image.
4. The application should run in the second image by copying the artifact.
5. All configuration must be done via environment variables.
6. The build and run process should be defined in a single `Dockerfile`.
7. Each build stage should be executed only if the dependent files change.
8. Create a `docker-compose` file for building and starting the application.
9. The container must run as a non-root user.
10. After installing all necessary utilities, the cache must be cleared.

