USE RendimientoRugby;
GO

CREATE VIEW CargasEntrenamientoUltimaSemana AS
SELECT 
    j.IDJugador,
    j.Nombre,
    e.Fecha AS [Fecha del entrenamiento],
    e.Tipo AS [Tipo de entrenamiento],
    (ce.CargaSubjetiva * e.Duracion) AS [Carga interna],
    ce.CargaObjetiva AS [Carga externa]
FROM CARGAENTRENAMIENTO ce
JOIN ENTRENAMIENTO e ON ce.IDEntrenamiento = e.IDEntrenamiento
JOIN JUGADOR j ON ce.IDJugador = j.IDJugador
WHERE e.Fecha >= DATEADD(DAY, -7, CAST(GETDATE() AS DATE));
GO