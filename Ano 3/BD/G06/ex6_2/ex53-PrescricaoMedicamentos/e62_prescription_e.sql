-- e) Para cada farmácia, o número de fármacos de cada farmacêutica vendidos
SELECT P.Farmacia_process,PF.Registo_farmaceutica,count(P.Farmacia_process) as num
FROM
( 
	(SELECT DISTINCT p1.No_prescricao,p1.Farmacia_process
	  FROM prescrition_system.Prescricao as p1
	  WHERE p1.Farmacia_process IS NOT NULL) as P
	JOIN
	prescrition_system.PrescricoesEnvolvemFarmacos AS PF
	ON P.No_prescricao=PF.No_prescricao
)
GROUP BY P.Farmacia_process,PF.Registo_farmaceutica