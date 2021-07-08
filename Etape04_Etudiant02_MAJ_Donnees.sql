/* 
 Travail pratique 1
 Nom de la première personne Crystal Fournier
 --> Olivier Julien
 
 Date  08-07-2021                                            
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------
SELECT*FROM local;

UPDATE local
SET nb_bureau=27,nb_prise_ethernet=27,imprimante_id_peripherique=678
WHERE nom_local='P-409';

UPDATE local
SET nb_bureau=5,nb_prise_ethernet=6,imprimante_id_peripherique=673
WHERE nom_local='P-416';

UPDATE local
SET nb_bureau=27,nb_prise_ethernet=27,imprimante_id_peripherique=679
WHERE nom_local='P-418';


SELECT*FROM peripherique;
select*from type_peripherique;
SELECT*FROM typeusager;

SET SQL_SAFE_UPDATES=0;

UPDATE peripherique
SET id_type_peripherique=4
WHERE nom_peripherique LIKE "écran%";

UPDATE peripherique 
SET id_type_peripherique=1
WHERE nom_peripherique LIKE "imprimante%";

UPDATE peripherique 
SET id_type_peripherique=2
WHERE nom_peripherique LIKE "souris%";

UPDATE peripherique 
SET id_type_peripherique=3
WHERE nom_peripherique LIKE "clavier%";





