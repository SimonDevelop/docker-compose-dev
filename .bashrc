alias composer='docker run -ti --rm -v $(pwd):/app composer'

# Commandes d'accès aux containers des versions php
alias php5.6='docker exec -ti <id_container_php5.6> php'
alias php7.0='docker exec -ti <id_container_php7.0> php'
alias php7.1='docker exec -ti <id_container_php7.1> php'
alias php7.2='docker exec -ti <id_container_php7.2> php'

# Commande d'accès au docker mysql
alias mysqld='docker exec -ti <id_container_mysql> mysql'
