# Simple Calculator

This program takes a few different inputs and can spit out various results from mathematical formulas.
Your task is to create simple unit tests for each of these formulas.
# Build Instructions
To build and run this, run this command in your terminal:
```
docker build -t calculator - < Dockerfile --no-cache && docker run -it calculator
```
It will build a Docker image from the Dockerfile in this repo named `calculator`, and then it will instantly run the container after building.