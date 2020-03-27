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

* pour importer une base de données, insérer le fichier .sql dans le repo /dump avant de lancer la commande $ docker-compose up -d.

* utilisez le repo /conf si vous faites tourner mySql dans un container.

* depuis un terminal, rendez-vous à la racine du repo (là où se trouve le fichier docker-compose ) et lancer la ligne de commande suivante :
    - $ docker-compose up -d

----------------

## Utilisation :


Une fois les containers buildés et au moins un fichier index.html ou index.php inséré dans le repo /www, l'application est visible à l'adresse suivante : http://localhost:8000/        (ou port personnaliser si modifié ligne 6 dans le docker-compose.yml)

Pour accéder à Adminer, l'adresse est : http://localhost:8080/      (ou port personnaliser si modifié ligne 32 dans le fichier docker-compose.yml)


Le sql host correspond à "l'adresse IP:port" utiliser par le container. On les retrouve avec la commande $ docker inspect [nom du container _db_ ] | grep IPAddress  et $ docker inspect [nom du container _db_ ] | grep HostPort  

(ex avec le nom actuel du repo : 

$ docker inspect docker_amp_myadmin_db_1 | grep IPAddress 
et la réponse : "IPAddress": "",
                    "IPAddress": "172.18.0.2",

 $ docker inspect docker_amp_myadmin_db_1 | grep HostPort

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
    - $ docker inspect [nom du container]

* pour supprimer les containers et les volumes de données (attention, supprime tout !) : 
    - $ docker-compose down -v

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

$ docker inspect docker_amp_myadmin_db_1 | grep IPAddress 
and the answer : "IPAddress": "",
                    "IPAddress": "172.18.0.2",

 $ docker inspect docker_amp_myadmin_db_1 | grep HostPort

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

* to delete containers and data volumes (be careful, delete everything !) :
    - $ docker-compose down -v

----------------
