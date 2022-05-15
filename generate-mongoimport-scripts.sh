#!/bin/bash

# Generate the mongoimport scripts which use the generated JSON data.
# Chris Joakim, Microsoft, May 2022
#
# See https://www.mongodb.com/docs/atlas/import/mongoimport/
# mongoimport --uri "mongodb://root:<PASSWORD>@atlas-host1:27017,atlas-host2:27017,atlas-host3:27017/<DATABASE>?ssl=true&replicaSet=myAtlasRS&authSource=admin" --collection myData --drop --file /somedir/myFileToImport.json
#
# mongodb://root:<PASSWORD>@atlas-host1:27017
# mongodb://127.0.0.1:27017

python main.py generate_mongoimport_scripts mongodb://127.0.0.1:27017 dev --nossl sh

echo 'done'
