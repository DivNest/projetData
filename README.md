# projetData
Je vous présente le compte rendu du projet "Entrepôt de Données" que nous avons mené au cours de l'année. Ce projet visait à établir un entrepôt de données permettant de répondre à plusieurs questions analytiques en utilisant des fichiers sources.

1. Analyse des Sources de Données
Les principales sources de données utilisées pour le projet étaient :

donnees-urgences-SOS-medecins.csv
code-tranches-dage-donnees-urgences.csv
departements-region.json
metadonnee-urgenceshos-sosmedecin-covid19-quot.csv
2. Nettoyage des Données et Modélisation de l'Entrepôt
Le nettoyage des données a été réalisé avec succès, incluant la gestion des valeurs manquantes et la suppression des doublons. Nous avons opté pour un schéma en étoile avec une table de faits (urgences_covid_faits) et des tables de dimensions (departements, tranche_age, regions, sexe).

3. DAG Airflow
Nous avons mis en place un DAG Airflow pour automatiser le processus ETL. Le DAG comprend trois étapes principales : l'extraction et la transformation (Extract_Transform_Load), la création des tables (create_table), et le chargement des données transformées dans la base de données (transform_and_load).

4. Tests de Qualité et Notifications
Des tests de qualité ont été intégrés pour assurer la fiabilité des données sources. De plus, un callback a été configuré pour envoyer des notifications par e-mail en cas d'échec ou de réussite du DAG.

5. Repo Git et README
L'ensemble du code a été partagé dans un repository Git, accompagné d'un README.md détaillant la procédure pour lancer le DAG.

6. Tables Créées dans la Base de Données
Les tables suivantes ont été créées dans la base de données PostgreSQL :

departements
tranche_age
regions
sexe
urgences_covid_faits
7. Conclusion
Le projet a été mené à bien, répondant aux objectifs fixés. Les fonctionnalités du DAG Airflow assurent une automatisation efficace du processus ETL, tandis que les tables modélisées permettent une exploration et une analyse approfondie des données.
