-- a) Lista de pacientes que nunca tiveram uma prescrição
SELECT P.No_utente, P.Nome
FROM (prescrition_system.Paciente AS P LEFT OUTER JOIN prescrition_system.Prescricao AS Pr ON P.No_utente=Pr.Pac_id)
WHERE No_prescricao is NULL;