# docker-compose-dev

Voici ma configuration d'un environment de developpement web basé sur docker. Cette configuration est avant tout faites pour mes besoins.

### Environnement
- nginx
- mysql
- php 7.2
- phpmyadmin
- maildev

Pour que cette configuration fonctionne il est impératif que vos fichiers web soit à la racine de `/var/www`

Préparer les dossiers/fichiers :
```bash
sudo ./bootlocal.sh
sudo chown -R userunix:group:unix /var/www
```

Lancer la docker-compose :
```bash
docker-compose up -d
```

Pour stoper les containers de la composition :
```bash
docker-compose stop
```

### Commandes php et composer

Copier les lignes du fichier `.bashrc` dans le votre.<br>
Pensez à configurer votre accès aux commandes docker sans `sudo`
```bash
sudo usermod -aG docker $USER
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
```
