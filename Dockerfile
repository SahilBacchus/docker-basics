# All instructions in Dockerfile will be executed sequentially in order from top to bottom
# Each instruction creates a new image layer 
#
# Build caches are made to speed up builds
# If context and instruction doesnt change then we can reuse layer 
# Else cache of subsequent layers are invalidated


# Use a small Python base image --> starting point for us to build upon
# FROM <image>:<tag> 
#
FROM python:3.11-slim


# Set working directory inside container
# All subsequent commands will be run from this directory
# WORKDIR <path to directory>
#
WORKDIR /app


# Copy files from your computer into container 
# "." means current directory
# COPY <src> <dest> 
#
COPY . .


# Execute command in the shell of the container
# Here we are installing the python dependencies in requirements.txt
# RUN <command>
#
RUN pip install -r requirements.txt


# Tell docker the application inside the container uses the specified ports
# Mainly serves as documentation since we will still need to map and open the port 
# when running the container via "-p 5000:5000"
# EXPOSE <port>
#
EXPOSE 5000


# Commands to run when the container starts 
# Here is when we actually run the python application
# CMD ["executable", "param1", "param2"]
#
CMD ["python", "app.py"]