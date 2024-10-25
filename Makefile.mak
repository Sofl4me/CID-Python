IMAGE_NAME=health-calculator-service
PORT=5000

.PHONY: init run test build clean

init:
    cd Project
    make init

run:
    python app.py

test:
    python -m unittest discover

build:
    docker build -t $(IMAGE_NAME) .
