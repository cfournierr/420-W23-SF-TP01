/* 
 Travail pratique 1
 --> Crystal Fournier
 Olivier Julien
 
 Date  08-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------
SELECT * FROM local;
UPDATE local 
SET nb_bureau = 16, nb_prise_ethernet = 16, imprimante_id_peripherique = 674
WHERE nom_local = 'P-210';

UPDATE local 
SET nb_bureau = 27, nb_prise_ethernet = 27, imprimante_id_peripherique = 676
WHERE nom_local = 'P-308';

UPDATE local 
SET nb_bureau = 27, nb_prise_ethernet = 27, imprimante_id_peripherique = 677
WHERE nom_local = 'P-309';

SELECT *FROM usager;
UPDATE usager 
SET id_typeUsager = 1 
WHERE id_usager BETWEEN 1 AND 9;

UPDATE usager
SET id_typeUsager = 2
WHERE id_usager BETWEEN 100 AND 999;

UPDATE usager
SET id_typeUsager = 3
WHERE id_usager >= 1000;
