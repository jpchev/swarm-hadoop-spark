network:
	docker network create -d overlay --attachable network

hadoop:
	docker stack deploy -c hs/docker-compose-hadoop.yml hadoop

spark:
	docker stack deploy -c hs/docker-compose-spark.yml spark

services:
	docker stack deploy -c hs/docker-compose-services.yml services

