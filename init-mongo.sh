#!/bin/bash
set -e

mongoimport --host localhost --db TestDB --collection TestSchoolData --type json --file /sample-data.json --jsonArray
mongoimport --host localhost --db TestDB --collection TestUserData --type json --file /sample-users.json --jsonArray
