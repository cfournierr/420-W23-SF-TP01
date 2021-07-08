/* 
 Travail pratique 1
 --> Crystal Fournier
 Olivier Julien
 
 Date  06-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------

CREATE TABLE type_peripherique(
		id_type_peripherique INT NOT NULL PRIMARY KEY,
        nom_type_peripherique VARCHAR(25)
        ) ENGINE = InnoDB;

ALTER TABLE peripherique
ADD id_type_peripherique INT,
ADD FOREIGN KEY(id_type_peripherique) REFERENCES type_peripherique(id_type_peripherique);

ALTER TABLE local
ADD nb_bureau INT,
ADD nb_prise_ethernet INT,
ADD imprimante_id_peripherique INT UNSIGNED;

ALTER TABLE local
ADD FOREIGN KEY(imprimante_id_peripherique)REFERENCES peripherique(id_peripherique);

ALTER TABLE local
ADD CONSTRAINT nom_local_unique UNIQUE (nom_local);

ALTER TABLE fabricant
ADD CONSTRAINT nom_fabricant_unique UNIQUE (nom_fabricant);





