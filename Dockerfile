# Use the official MongoDB image
FROM mongo


# Copy your sample data into the container
COPY sample-data.json /sample-data.json
COPY sample-users.json /sample-users.json

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


