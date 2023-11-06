# Use the official MongoDB image
FROM mongo

# Install the MongoDB shell
RUN apt-get update \
    && apt-get install -y mongodb-org-shell \
    && rm -rf /var/lib/apt/lists/*

# Copy your sample data into the container
COPY sample-data.json /sample-data.json

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

# Copy the reset script into the container
COPY reset-and-import.sh /reset-and-import.sh

# Set the reset script to be executable
RUN chmod +x /reset-and-import.sh

# Run the reset script on container start
CMD ["/reset-and-import.sh"]

