FROM mongo:latest

COPY dataModel.json /dataModel.json
CMD mongoimport --uri "mongodb://mongo:27017/dataports-db" --collection datamodelobjects --type json --file /dataModel.json --jsonArray