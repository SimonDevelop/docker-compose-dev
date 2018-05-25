alias composer='docker run -ti --rm -v $(pwd):/app composer'

# Commandes d'accès aux containers des versions php
alias php7.1='docker exec -ti <id_container_php7.1> php'
alias php7.2='docker exec -ti <id_container_php7.2> php'

# Commandes d'accès aux containers des bases de données
alias mysqld='docker exec -ti <id_container_mysql> mysql'
alias mongod='docker exec -ti <id_container_mongo> mongo'
alias redisd='docker exec -ti <id_container_redis> redis-cli'
