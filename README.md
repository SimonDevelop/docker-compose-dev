# docker-compose-dev

Voici ma configuration d'un environment de developpement web basé sur docker. Cette configuration est avant tout faites pour mes besoins.

### Environnement
- nginx
- php 7.1/7.2
- phpmyadmin
- mysql
- mongo
- redis
- rethinkdb
- maildev
- extensions php :
  - redis
  - ssh2
  - swoole  

Pour que cette configuration fonctionne il est impératif que votre projet web soit à la racine de `/var/www/myprojet`

Préparer les dossiers/fichiers :
```bash
sudo ./bootlocal.sh
sudo chown -R userunix:groupunix /var/www
```

Lancer la docker-compose :
```bash
docker-compose up -d
```

Pour stoper les containers de la composition :
```bash
docker-compose stop
```

### Commandes terminal
Copier les lignes du fichier `.bashrc` dans le votre sans oublié de préciser les `id` des containers cibles (php, mysql...).<br>
Les version php des containers sont executés à partir du dossier `/var/www`, si vous avez besoin d'executer des scripts demandant la racine (doctrine par exemple), il faudra alors re-builder vos versions php en précisant le chemin absolut du projet en question.<br>
Pensez aussi à configurer votre accès aux commandes docker sans `sudo`
```bash
sudo usermod -aG docker $USER
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
```
à chaque `composer install`, il faudra redéfinir les droits des dossiers/fichiers composer, car ces deniers appartiendrons à l'utilisateur `root`.
```bash
sudo chown -R userunix:groupunix /var/www
```

### /etc/hosts
```
0.0.0.0         mysql
0.0.0.0         rethinkdb
0.0.0.0         mongo
0.0.0.0         redis
```

### PhpMyAdmin/Mysql
```
127.0.0.1:3000
Host : mysql
Port : 3306
Login : root
Password : root
```

### Mongo
Identifiants mongo :
```
Host : mongo
Port : 27017
Database : develop
Login : test
Password : test
et
Database : admin
Login : admin
Password : admin
```
Pour se connecter en ligne de commande :
```
mongod admin -u <username> -p '<password>' --authenticationDatabase <database>
```

### RethinkDB
[Documentation sur le ReQL](https://www.rethinkdb.com/docs/introduction-to-reql/).<br>
Aller sur `127.0.0.1:8000` et modifier le mot de passe admin dans `Data Explorer` via la commande :
```
r.db('rethinkdb').table('users').filter({id:"admin"}).update({password: "admin"})
```
Pour obtenir ceci :
```
Host : rethinkdb
Port : 29015 et 28015
Database : rethinkdb
Login : admin
Password : admin
```

### Redis
```
Host : redis
Port : 6379
```

### Maildev
```
Webmail : 127.0.0.1:1080
Smtp : 127.0.0.1:1025
```
