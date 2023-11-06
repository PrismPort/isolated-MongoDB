#!/bin/bash
set -e

# Initiate MongoDB command-line shell with admin authentication
mongo -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" --authenticationDatabase admin <<EOF
# Drop the TestDB if it exists
use schoolTestDB
db.dropDatabase();
EOF

# Import the data into the respective collections
mongoimport --host localhost --db TestDB --collection TestSchoolData --type json --file /sample-data.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD"
mongoimport --host localhost --db TestDB --collection TestUserData --type json --file /sample-users.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD"
