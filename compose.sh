sudo docker ps -qf "name=drosophila_project_env" > docker_check.log
if  [ -s "docker_check.log" ]
then
    echo "There is a container named 'drosophila_project_env', deleting it to create a new one..."
    sudo docker rm --force $(sudo docker ps -qf "name=drosophila_project_env")
else
    echo "There is no container named 'drosophila_project_env', creating one..."
fi
rm -rf docker_check.log
sudo docker compose up -d
sudo docker exec -it $(sudo docker ps -qf "name=drosophila_project_env") /bin/bash
