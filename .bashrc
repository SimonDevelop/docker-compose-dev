alias composer='docker run -ti --rm -v $(pwd):/app composer'

# Personnalisez vos commande(s) php sur plusieurs version
alias php5.6='docker exec -ti <id_container_php> php'
alias php7.0='docker exec -ti <id_container_php> php'
alias php7.1='docker exec -ti <id_container_php> php'
alias php7.2='docker exec -ti <id_container_php> php'
