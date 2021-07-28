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
u.nom_usager AS "Nom d'usager",
l.nom_local AS "Local",
p.desc_poste AS 'Description du poste'

from 
Usager AS u,
local AS l,
poste AS p;
