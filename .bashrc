alias composer='docker run -ti --rm -v $(pwd):/app composer'

# Commandes d'accès aux containers des versions php
alias php5.4='docker exec -ti <id_container_php5.4> php'
alias php5.5='docker exec -ti <id_container_php5.5> php'
alias php5.6='docker exec -ti <id_container_php5.6> php'
alias php7.0='docker exec -ti <id_container_php7.0> php'
alias php7.1='docker exec -ti <id_container_php7.1> php'
alias php7.2='docker exec -ti <id_container_php7.2> php'

# Commandes d'accès aux containers des bases de données
alias mysqld='docker exec -ti <id_container_mysql> mysql'
alias mongod='docker exec -ti <id_container_mongo> mongo'
