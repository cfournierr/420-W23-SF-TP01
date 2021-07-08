/* 
 Travail pratique 1
 Nom de la première personne
 --> Olivier Julien
 
 Date  06-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------

CREATE TABLE typeUsager(
	id_typeUsager INT NOT NULL,
    nom_statut VARCHAR(45),
    PRIMARY KEY (id_typeUsager)
    )ENGINE=INNODB;


ALTER TABLE usager
ADD id_typeUsager INT,
ADD FOREIGN KEY(id_typeUsager)REFERENCES typeUsager(id_typeUsager);


ALTER TABLE logiciel
Modify nom_logiciel VARCHAR(45) UNIQUE NOT NULL;

ALTER TABLE editeur
MODIFY nom_editeur VARCHAR(45) UNIQUE NOT NULL;











