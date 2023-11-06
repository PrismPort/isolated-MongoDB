#!/bin/bash
# set -e  # Commented out for debugging

# Import the data into the respective collections
echo "Importing TestSchoolData..."
mongoimport --verbose --host localhost --db TestDB --collection TestSchoolData --type json --file /sample-data.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import TestSchoolData"

echo "Importing TestUserData..."
mongoimport --verbose --host localhost --db TestDB --collection TestUserData --type json --file /sample-users.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import TestUserData"

