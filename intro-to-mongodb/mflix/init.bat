call env
mongorestore --drop --gzip --uri %MFLIX_DB_URI% data/dump
