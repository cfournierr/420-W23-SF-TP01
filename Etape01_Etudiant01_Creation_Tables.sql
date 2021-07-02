/* 
 Travail pratique 1
 --> Crystal Fournier
 Olivier Julien
 
 Date  02-07-2021                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
CREATE TABLE poste (
		id_poste INT UNSIGNED NOT NULL PRIMARY KEY,
        desc_poste VARCHAR(45)NOT NULL,
        desc_processeur VARCHAR(45) NOT NULL,
        nb_ram_mo VARCHAR(45) NOT NULL, 
        tail_disque_giga INT UNSIGNED NOT NULL, 
        id_fabricant INT UNSIGNED NOT NULL,
        id_local INT UNSIGNED 

) ENGINE = InnoDB;

CREATE TABLE local ( 
		id_local INT UNSIGNED NOT NULL PRIMARY KEY,
        nom_local VARCHAR(45) NOT NULL

) ENGINE = InnoDB;

CREATE TABLE peripherique (
		id_peripherique INT UNSIGNED NOT NULL PRIMARY KEY,
        nom_peripherique VARCHAR(45) NOT NULL, 
        id_poste INT UNSIGNED NOT NULL,
        id_fabricant INT UNSIGNED NOT NULL
        
) ENGINE = InnoDB;

CREATE TABLE fabricant (
		id_fabricant INT UNSIGNED NOT NULL PRIMARY KEY,
        nom_fabricant VARCHAR(45) NOT NULL
) ENGINE = InnoDB; 

-- AJOUT DES FK 
ALTER TABLE poste 
ADD FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant),
ADD FOREIGN KEY (id_local) REFERENCES local(id_local);

ALTER TABLE peripherique
ADD FOREIGN KEY (id_poste) REFERENCES poste(id_poste),
ADD FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant);



