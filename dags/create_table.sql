-- Création de la table des départements
CREATE TABLE departements (
    dep INT PRIMARY KEY,
    Nom_du_Departement VARCHAR(255),
    region INT,
    FOREIGN KEY (region) REFERENCES regions(region)
);

-- Création de la table des tranches d'âge
CREATE TABLE tranche_age (
    sursaud_cl_age_corona INT PRIMARY KEY,
    Libelle_Tranche_Age VARCHAR(255)
);

-- Création de la table des régions
CREATE TABLE regions (
    region INT PRIMARY KEY,
    Nom_de_la_Region VARCHAR(255)
);

-- Création de la table des sexes
CREATE TABLE sexe (
    sex VARCHAR(1) PRIMARY KEY,
    Libelle_Sexe VARCHAR(255)
);

-- Création de la table des faits (urgences_covid_faits)
CREATE TABLE urgences_covid_faits (
    dep INT,
    date_de_passage DATE,
    sursaud_cl_age_corona INT,
    nbre_pass_corona INT,
    nbre_pass_tot INT,
    nbre_hospit_corona INT,
    nbre_pass_corona_h INT,
    nbre_pass_corona_f INT,
    nbre_pass_tot_h INT,
    nbre_pass_tot_f INT,
    nbre_hospit_corona_h INT,
    nbre_hospit_corona_f INT,
    nbre_acte_corona INT,
    nbre_acte_tot INT,
    nbre_acte_corona_h INT,
    nbre_acte_corona_f INT,
    nbre_acte_tot_h INT,
    nbre_acte_tot_f INT,
    sex VARCHAR(1),
    region INT,
    FOREIGN KEY (dep) REFERENCES departements(dep),
    FOREIGN KEY (sursaud_cl_age_corona) REFERENCES tranche_age(sursaud_cl_age_corona),
    FOREIGN KEY (region) REFERENCES regions(region),
    FOREIGN KEY (sex) REFERENCES sexe(sex)
);
