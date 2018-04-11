# nginx-uwsgi-alpine
Docker image for nginx + uwsgi python web app webserver (should run on many platforms)

# Supported Platforms ready to use:
- amd64 -> tag: ```:amd64``` / ```:latest```
- arm64 (raspberrypi) -> tag: ```:arm64```

# Supported Platforms to build
Should be the same as [alpine Linux](https://hub.docker.com/_/alpine/), because only alpine and python-pip packets were used, which leads to:
- ```amd64```
- ```arm32v6```
- ```arm64v8```
- ```i386```
- ```ppc64le```
- ```s390x```      
Please correct me if I'm wrong!

# Usage:
Just start the container and mount you app at ```/app/```. In your app folder you should have a pyhton executable which has to be named ```main.py``` with your app inside the file called ```app```. In Flask it would look like ```app = flask.Flask(__name__)```. Also you can specify to install additional python packages via pip if you place a ```requirements.txt``` inside your app folder. The Webserver will run on Port 80 inside the Container. So here a quickstart, lets assume your app is located in ```~/app/``` so the docker command would be: ```docker run -d -p 80:80 -v ~/app/:/app/ gqdeltex/nginx-uwsgi-alpine```

# Additional Information:
You can change the nginx config just by mounting a new config file to ```/etc/nginx/nginx.conf```.
The STDOUT is a mix between nginx and uwsgi and you python app. Be aware when debugging!
