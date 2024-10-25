IMAGE_NAME=health-calculator-service
PORT=5000

.PHONY: init run test build clean

init:
    pip install -r requirements.txt

run:
    python app.py

test:
    python -m unittest discover

build:
    docker build -t $(IMAGE_NAME) .
