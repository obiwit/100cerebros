-- d) Pacientes que tiveram prescrições de médicos diferentes
SELECT P1.Pac_id
FROM(
	SELECT P.Pac_id,P.Med_id,count(P.Pac_id) as num
	FROM prescrition_system.Prescricao as P
	GROUP BY P.Pac_id,P.Med_id
) AS P1
GROUP BY P1.Pac_id
HAVING count(P1.Pac_id) > 1