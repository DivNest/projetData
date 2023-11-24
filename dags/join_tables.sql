-- Requête de jointure
SELECT
    ucf.*,
    d.Nom_du_Departement,
    ta.Libelle_Tranche_Age,
    r.Nom_de_la_Region,
    s.Libelle_Sexe
FROM
    urgences_covid_faits ucf
JOIN
    departements d ON ucf.dep = d.dep
JOIN
    tranche_age ta ON ucf.sursaud_cl_age_corona = ta.sursaud_cl_age_corona
JOIN
    regions r ON ucf.region = r.region
JOIN
    sexe s ON ucf.sex = s.sex;
