# docker_amp

----------------

## description :


Environnement AMP dockeriser  
Version : 1.0.0  
Date : 2020-01-27  
Responsable : HI  

----------------

## Mise en oeuvre :


* modifiez les __nom__, __login__ et __mot de passe__ de la db par vos propres données (lignes 19 à 22 dans le fichier docker-compose.yml).

* si nécéssaire modifiez les ports des containers www et adminer (lignes 6 et 32 dans le fichier docker-compose.yml).

* insérer les fichiers HTML, PHP, JavaScript, CSS ... dans le repo /www.

* pour importer une base de données, insérer le fichier .sql dans le repo /dump **avant** de lancer la commande $ docker-compose up -d.

* utilisez le repo /conf si vous faites tourner mySql dans un container.

* depuis un terminal, rendez-vous à la racine du repo (là où se trouve le fichier docker-compose ) et lancer la ligne de commande suivante :
    - $ docker-compose up -d

----------------

## Utilisation :


Une fois les containers buildés et au moins un fichier index.html ou index.php inséré dans le repo /www, l'application est visible à l'adresse suivante : http://localhost:8000/        (ou port personnalisé si modifié ligne 6 dans le docker-compose.yml)

Pour accéder à Adminer, l'adresse est : http://localhost:8080/      (ou port personnalisé si modifié ligne 32 dans le fichier docker-compose.yml)


Le sql host correspond à "l'adresse IP:port" utiliser par le container. On les retrouve avec la commande $ docker inspect [nom du container _db_ ] | grep IPAddress  et $ docker inspect [nom du container _db_ ] | grep HostPort  

(ex avec le nom actuel du repo : 

$ docker container inspect docker_amp_adminer_db_1 | grep IPAddress 
et la réponse : "IPAddress": "",
                    "IPAddress": "172.18.0.2",

 $ docker container inspect docker_amp_adminer_db_1 | grep HostPort

et la réponse : "HostPort": "3306"
                    "HostPort": "3306"
                        
Utilisez ces informations pour les requêtes : const DEFAULT_SQL_HOST = '172.19.0.2:3306';

----------------

## Rappel des principales commandes Docker :


* pour stopper les containers :
    - $ docker-compose stop

* pour les relancer si déjà buildés :
    - $ docker-compose start 

* pour lister les containers qui tournent :
    - $ docker-compose ps

* pour lister tous les containers :
    - $ docker container ls -la

* pour inspecter les containers :
    - $ docker container inspect [nom du container]

* pour exécuter des commandes arbitraires dans les services.
    - $ docker-compose exec nom_du_container sh


* pour supprimer les containers et les volumes de données (Arrête les container et supprime les container, réseaux, volumes et images créés par up) : 
    - $ docker-compose down --rmi all --remove-orphans -v

    * Par défaut, les seules choses supprimées sont :
        - Container pour les services définis dans le fichier docker-compose.yml
        - Réseaux définis dans la section network du fichier docker-compose.yml
        - Le réseau par défaut, s'il est utilisé

Les réseaux et volumes définis comme externes ne sont jamais supprimés.

* pour tout supprimer du système une fois les containers stoppés (**faire très attention**, **supprime** du système **TOUS** les container, réseaux, images, volumes inutilisés)
    - $ docker system prune

    * Cela supprimera :
        - tous les container arrêtés
        - tous les réseaux non utilisés par au moins un conteneur
        - toutes les images en suspend
        - tout le cache de construction

    - $ docker system prune -a --volumes

    * Cela supprimera :
        - tous les container arrêtés
        - tous les réseaux non utilisés par au moins un conteneur
        - tous les volumes non utilisés par au moins un conteneur
        - toutes les images sans au moins un conteneur qui leur est associé
        - tout le cache de construction


----------------

# docker_amp


----------------

## description :


Environnement AMP dockeriser  
Version : 1.0.0  
Date : 2020-01-27  
Responsable : HI  

----------------

## Implementation :


* modify the db __name__, __login__ and __password__ with your own data (lines 19 to 22 of the docker-compose.yml file).

* if necessary modify the ports of the www and adminer containers (lines 6 and 32 in the docker-compose.yml file).

* to import a database, insert the .sql file in the repo / dump before launching the $ docker-compose up -d command.

* insert html, php, javaScript, css ... files into the repo /www.

* use the repo /conf if you are running mySql in a container.

* from a terminal, go to the root of the repo / docker-amp (where the docker-compose file is located) and launch the following command line :
    - $ docker-compose up -d

----------------

## Utilisation :


Once the containers have been built and at least one index.html or index.php file inserted in the repo /www, the application is visible at the following address: http://localhost:8000/    (or port customize if modified line 6 in the docker-compose.yml)

To access Adminer, the address is: http://localhost:8080/   (or port customize if modified line 32 in the docker-compose.yml)

The sql host corresponds to "IP address: port" used by the container. We find them with the command $ docker inspect [container name _db_] | grep IPAddress and $ docker inspect [container name _db_] | grep HostPort

(ex with the current name of the repo:  

$ docker inspect docker_amp_adminer_db_1 | grep IPAddress 
and the answer : "IPAddress": "",
                    "IPAddress": "172.18.0.2",

 $ docker inspect docker_amp_adminer_db_1 | grep HostPort

and the answer : "HostPort": "3306"
                    "HostPort": "3306"
                        
Use this information for queries : const DEFAULT_SQL_HOST = '172.19.0.2:3306';

----------------

## Reminder of the main Docker commands:


* to stop the containers:
    - $ docker-compose stop

* to relaunch them if already built:
    - $ docker-compose start

* to list the running containers:
    - $ docker-compose ps

* to list all of the containers :
    - $ docker container ls -la

* to inspect all of the containers :
    - $ docker inspect [nom du container]

* to delete containers, images and data volumes (Stops containers and removes containers, networks, volumes, and images created by up) : 
    - $ docker-compose down --rmi all --remove-orphans -v

    * By default, the only things removed are :
        - Containers for services defined in the Compose file
        - Networks defined in the networks section of the Compose file
        - The default network, if one is used

Networks and volumes defined as external are never removed.

* to delete everything once the containers are stopped (whatch your steps, Remove all unused containers, networks, images (both dangling and unreferenced), and optionally, volumes)
    - $ docker system prune

    * This will remove :
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache

    - $ docker system prune -a --volumes

    * This will remove :
        - all stopped containers
        - all networks not used by at least one container
        - all volumes not used by at least one container
        - all images without at least one container associated to them
        - all build cache

----------------
