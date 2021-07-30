/* 
 Travail pratique 1
 --> Crystal Fournier
Olivier Julien
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------
SELECT 
nom_local AS 'No. Local',
nb_bureau AS 'Nb. Bureau',
nb_prise_ethernet AS 'Nb. Prise Ethernet',
imprimante_id_peripherique AS 'No. Imprimante'

FROM 
local;

SELECT  
loc.nom_local AS 'No. Local',
loc.nb_bureau AS 'Nb. Bureau',
loc.nb_prise_ethernet AS 'Nb. Prise Ethernet',
loc.imprimante_id_peripherique AS 'No. Imprimante',
p.nom_peripherique AS 'Nom de l\'imprimante'

FROM 
local as loc
	INNER JOIN 
peripherique AS p ON loc.imprimante_id_peripherique = p.id_peripherique;

SELECT 
log.nom_logiciel AS 'Logiciel',
COUNT(inst.id_logiciel) as 'Nb. d\'installation sur poste'

FROM poste_has_logiciel as inst 
INNER JOIN 
logiciel as log ON inst.id_logiciel = log.id_logiciel
GROUP BY log.nom_logiciel
ORDER BY COUNT(inst.id_logiciel) DESC;






