# Use Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the folder containing the files to the container's working directory
COPY . .

# Install a simple HTTP server (in this case, Python's http.server)
RUN apt-get update && apt-get install -y python3

# Expose port 80 to allow incoming traffic
EXPOSE 8080

# Run a web server to serve the index.html file on port 8080
CMD ["python3", "-m", "http.server", "8080"]

