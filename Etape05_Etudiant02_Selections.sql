/* 
 Travail pratique 1
 Nom de la première personne Crystal
 --> Nom de la deuxième personne Olivier
 
 Date  28-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------
SELECT 
nom_local AS 'No.local', 
nb_bureau AS 'Nb.bureau',
nb_prise_ethernet AS 'Nb.prise ethernet',
imprimante_id_peripherique AS 'No Imprimante'
FROM
local;

SELECT
CONCAT(u.nom_usager,",",u.prenom_usager)AS "Nom d'usager",
loc.nom_local AS "Nom local",
poste.desc_poste AS "Description du poste"
FROM usager_has_poste AS uhp
INNER JOIN usager u ON uhp.id_usager = u.id_usager
INNER JOIN local loc ON u.local_id_local = loc.id_local
INNER JOIN poste ON uhp.id_poste = poste.id_poste
ORDER BY u.nom_usager;










