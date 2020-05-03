# Minimal Docker-containerized Web-app

This is a minimal Node.js/Express web-application prepared for building
a Docker container.

## Instructions

[Install Docker](https://docs.docker.com/engine/install/). Clone this
repository:

    git clone https://github.com/yds12/minimal-containerized-webapp.git

Go to the cloned repository directory (`cd minimal-containerized-webapp`), 
and build the docker image of the app:

    docker build -t minwebapp .

Check that the image is listed by Docker:

    docker images

Run the image, specifying the environment variable PORT and mapping the
container port in the variable to port 3000 on the host machine:

    docker run -e PORT=8080 -p 3000:8080 -d minwebapp

The option `-d` is for running the process in the background. Now check that
there is a running container:

    docker ps

Take note of the container ID and check the logs of that container:

    docker logs <container-ID>

Check that the webserver is responding successfully:

    curl -v localhost:3000

Now, kill the process:

    docker kill <container-ID>

Check the running containers again to see that it is not running anymore
(`docker ps`). And remove the container:

    docker image rm -f minwebapp

Check again the list of images to see that it is not there anymore 
(`docker images`).

A nice tutorial for making a Dockerfile for Node.js can be found
[here](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/).
