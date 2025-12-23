from flask import Flask
import os

app = Flask(__name__)


@app.route("/")
def hello():
    running_in_docker = os.getenv("RUNNING_IN_DOCKER", "false").lower() == "true"

    if running_in_docker:
        return "Hello from Docker! 🐳" 
    else:  
        return "Hello, but not from Docker 😢"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
