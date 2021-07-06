/* 
 Travail pratique 1
 Nom de la première personne:Crystal Fournier
 --> Nom de la deuxième personne: Olivier Julien
 
 Date  02-07-2020                                            
*/



-- DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;


USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

CREATE TABLE logiciel(
	id_logiciel INT UNSIGNED NOT NULL,
    nom_logiciel VARCHAR(45) NOT NULL,
    nb_license INT UNSIGNED,
    id_editeur INT UNSIGNED NOT NULL,
    PRIMARY KEY(id_logiciel)

    ) ENGINE = InnoDB;
    
CREATE TABLE editeur(
	id_editeur INT UNSIGNED NOT NULL,
    nom_editeur VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_editeur)
    )ENGINE = InnoDB;
	
CREATE TABLE poste_has_logiciel(
	id_poste INT UNSIGNED NOT NULL,
    id_logiciel INT UNSIGNED NOT NULL
    )engine = INNODB;
    
 ALTER TABLE logiciel
 ADD FOREIGN KEY (id_editeur)REFERENCES editeur(id_editeur);
    
CREATE TABLE usager(
	id_usager INT UNSIGNED NOT NULL,
    nom_usager VARCHAR(45) NOT NULL,
    prenom_usager VARCHAR(45) NOT NULL,
    telephone_usager VARCHAR(15)NOT NULL,
    local_id_local INT UNSIGNED NOT NULL,
    PRIMARY KEY(id_usager)
    )ENGINE = InnoDB;
    

CREATE TABLE usager_has_poste(
	id_usager INT UNSIGNED NOT NULL,
    id_poste INT UNSIGNED NOT NULL
    )ENGINE = InnoDB;
 
 /*
 
ALTER TABLE poste_has_logiciel
ADD PRIMARY KEY(id_poste,id_logiciel);

ALTER TABLE poste_has_logiciel
ADD FOREIGN KEY(id_logiciel)references logiciel(id_logiciel);

ALTER TABLE poste_has_logiciel
ADD FOREIGN KEY (id_poste)references poste(id_poste);

SELECT* FROM poste_has_logiciel as pl
LEFT JOIN poste as p
ON p.id_poste = pl.id_poste;

SELECT*FROM poste;

 ALTER TABLE usager
 ADD FOREIGN KEY (local_id_local)REFERENCES local(id_local)
 */



