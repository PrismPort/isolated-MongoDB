# Use the official MongoDB image
FROM mongo

# Copy your sample data into the container
COPY datasets/sample-data.json /sample-data.json
COPY datasets/sample-users.json /sample-users.json
COPY datasets/sample-school.json /sample-school.json
COPY datasets/books.json /books.json
COPY datasets/city_inspections.json /city_inspections.json
COPY datasets/covers.json /covers.json
COPY datasets/products.json /products.json
COPY datasets/grades.json /grades.json
COPY datasets/restaurant.json /restaurant.json
COPY datasets/profiles.json /profiles.json
COPY datasets/LotteryNumbers.json /LotteryNumbers.json
COPY datasets/StreetTrees.json /StreetTrees.json
COPY datasets/Babynames.json /Babynames.json
COPY datasets/AirbnbBerlin.json /AirbnbBerlin.json

# Copy the script to init the DB with
COPY init-mongo.sh /docker-entrypoint-initdb.d/init-mongo.sh

# Set the script to be executable
RUN chmod +x /docker-entrypoint-initdb.d/init-mongo.sh

# Set environment variables for MongoDB (if necessary)
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password
ENV MONGO_INITDB_DATABASE=mydatabase

# Expose the default MongoDB port
EXPOSE 27017


