if [ -f .env ]; then
    export $(cat .env | xargs)
fi

# Use envsubst to replace variables in docker-compose.yml
envsubst < docker-compose.yml > docker-compose.yml 
