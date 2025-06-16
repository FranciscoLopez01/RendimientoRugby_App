USE RendimientoRugby;
GO
CREATE VIEW vw_JugadoresConLesiones AS
SELECT j.Nombre, j.Apellido, l.TipoLesion, l.FechaLesion, l.Gravedad
FROM JUGADOR j
JOIN LESION l ON j.IDJugador = l.IDJugador;
