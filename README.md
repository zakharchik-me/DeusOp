## **Docker: Multi-Stage Builds, Different Levels of Dependencies**

**Objective:** To master the methods of creating Docker images with various levels of dependencies.

### 1. **Create a Dockerfile named `system`**
This Dockerfile should install all the dependencies needed to build the project. For example, it could install a specific version of Node.js.

### 2. **Create a Dockerfile for building the project named `build`**
This Dockerfile will be responsible for building the project. It should use the `system` image and should not install any additional dependencies like `apk add`, `apt install`, etc. In this file, only dependencies should be downloaded, and the build process should occur.

### 3. **Create a Dockerfile for running the built project**
This Dockerfile should only include the tools necessary to run the built project. For example, for a Node.js project, it would use a command like `npm run start`. If it’s a Python project, you can combine steps 2 and 3 into one Dockerfile. If you're building a Go project, only the binary should be included.

### 4. **Configuration via environment variables**
All configuration should be done using environment variables, ensuring flexibility and maintainability.

### 5. **Use lightweight base images**
Use Alpine-based images to keep the Docker images as small as possible.

### 6. **Run the container as a non-privileged user**
The container should be run under a non-privileged user for security purposes.

### 7. **Clean up the cache after installing utilities**
After installing necessary utilities, clean up the cache to reduce the image size.

