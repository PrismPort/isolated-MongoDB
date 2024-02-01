#!/bin/bash
# set -e  # Commented out for debugging

# Import the data into the respective collections
echo "Importing TestSchoolData..."
mongoimport --verbose --host localhost --db SchoolDB --collection TestSchoolData --type json --file /sample-data.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import TestSchoolData"

echo "Importing TestSchoolData..."
mongoimport --verbose --host localhost --db SchoolDB --collection SchoolDataExtended --type json --file /sample-school.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import TestUserData"

echo "Importing TestUserData..."
mongoimport --verbose --host localhost --db UsersDB --collection TestUserData --type json --file /sample-users.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import TestUserData"

echo "Importing profiles..."
mongoimport --verbose --host localhost --db UsersDB --collection profiles --type json --file /profiles.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import profiles"

# echo "Importing books..."
# mongoimport --verbose --host localhost --db Books --collection books --type json --file /books.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import books"

# echo "Importing books covers..."
# mongoimport --verbose --host localhost --db Books --collection covers --type json --file /covers.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import book covers"

echo "Importing restaurant data..."
mongoimport --verbose --host localhost --db Restaurants --collection restaurantData --type json --file /restaurant.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import restaurantData"

# echo "Importing street trees..."
# mongoimport --verbose --host localhost --db StreetTrees --collection streetTrees --type json --file /StreetTrees.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import streetTrees"

echo "Importing restaurant LotteryNumbers.."
mongoimport --verbose --host localhost --db LotteryNumbers --collection LotteryNumbers --type json --file /LotteryNumbers.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import LotteryNumbers"

echo "Importing BabyNames..."
mongoimport --verbose --host localhost --db BabyNames --collection BabyNames --type json --file /Babynames.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import babynames"

echo "Importing AirbnbBerlin..."
mongoimport --verbose --host localhost --db AirbnbData --collection AirbnbBerlin --type json --file /AirbnbBerlin.json --jsonArray --authenticationDatabase admin -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" || echo "Failed to import AirbnbBerlin"


echo "Importing restaurant reviews..."