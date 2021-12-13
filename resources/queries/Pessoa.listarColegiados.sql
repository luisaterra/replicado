SELECT DISTINCT 
  COLEGIADO.codclg,
  COLEGIADO.nomclg,
  COLEGIADO.tipclg

FROM PARTICIPANTECOLEG
  INNER JOIN COLEGIADO 
    ON COLEGIADO.codclg = PARTICIPANTECOLEG.codclg

WHERE COLEGIADO.codundrsp IN (__unidades__)
  AND PARTICIPANTECOLEG.dtafimmdt > :dtafimmdt

ORDER BY COLEGIADO.tipclg, COLEGIADO.nomclg
