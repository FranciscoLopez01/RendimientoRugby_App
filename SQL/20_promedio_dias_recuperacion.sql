USE RendimientoRugby;
SELECT l.TipoLesion,
       AVG(DATEDIFF(DAY, r.FechaInicio, r.FechaFin)) AS PromedioDiasRecuperacion
FROM LESION l
JOIN RECUPERACION r ON l.IDLesion = r.IDLesion
GROUP BY l.TipoLesion;
