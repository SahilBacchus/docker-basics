# 🐳 Docker Basics 


### Prerequisites

Before getting started, ensure that you have docker installed on your machine, see the official site for details: [https://docs.docker.com/get-started/get-docker/](https://docs.docker.com/get-started/get-docker/)

To verify that you have docker you can run `docker --version` in your terminal.

---

### 1. Clone the repository

```bash
git clone https://github.com/SahilBacchus/docker-basics.git
cd docker-basics
```

### 2. Build the Docker image 
This command builds the Docker image using the [Dockerfile](Dockerfile)

```bash 
docker build -t docker-basics .
```
- `-t docker-basics`: Tag/name the image `docker-basics` for easy reference, instead of auto-generated image ID
- `.`: Use current directory as the build context so Docker can see the Dockerfile and files needed to build the image

> Note: A [.dockerignore](.dockerignore) is used to prevent unnecessary/sensitive files from being copied into the image 

### 3. Run the container
This command starts a container from a specified image in this case called `docker-basics`
```bash 
docker run -p 5000:5000 docker-basics
```
- `-p 5000:5000`: Maps port `5000` (left number) from your machine to port `5000` (right number) inside the container

### 4. Visit the site here: 

```bash 
http://localhost:5000
```
