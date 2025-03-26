## **Docker: Multistage, Build, and Run**

### **Lab Goal**
The goal of this lab is to master the approach of creating a lightweight image by building an application on one image and running it on another. It is recommended to use any open-source application that requires compilation (Java, C/C++, Golang, Node).

### **Requirements**
# Stage 1: Build the application
FROM golang:1.21-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the source code
COPY . .

# Build the application
RUN go build -o myapp .

# Stage 2: Create a lightweight runtime container
FROM alpine:latest

# Set a non-root user for security
RUN adduser -D myuser
USER myuser

# Set the working directory
WORKDIR /app

# Copy the built application from the builder stage
COPY --from=builder /app/myapp /app/myapp

# Expose the necessary port (change as needed)
EXPOSE 8080

# Define environment variables (can be overridden in docker-compose)
ENV APP_ENV=production

# Run the application
CMD ["/app/myapp"]

