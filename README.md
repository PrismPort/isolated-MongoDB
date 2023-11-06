# $CoolName – A visual interface for human readable MongoDB queries

This is an isolated docker container running a MongoDb isntance and populating it with some sample data.

[Our names]

[University context]

## Installation

**Prerequisites**
* Docker Desktop > 4.24

clone or fork the repo.

Create a Docker image and run it with the following command:
```bash
docker compose up --build
```
## Project structure

After successfully building the project consists of one Docker Conatiner.

### mongoDB
* MongoDB database
* Default Port 27017 is exposed
* A persistent Docker volume `mongodb-data` for databases
* by default the root username is:  admin
* by default the root password is: password

 -> these values can be changed in the Dockerfile.

## Usage

Our test database filled with some data

