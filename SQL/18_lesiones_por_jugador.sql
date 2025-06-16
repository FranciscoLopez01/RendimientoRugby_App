USE RendimientoRugby;
SELECT j.Nombre, j.Apellido, COUNT(*) AS TotalLesiones
FROM JUGADOR j
JOIN LESION l ON j.IDJugador = l.IDJugador
GROUP BY j.Nombre, j.Apellido;
