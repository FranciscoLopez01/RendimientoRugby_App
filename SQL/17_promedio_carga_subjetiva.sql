USE RendimientoRugby;
SELECT IDJugador, AVG(CargaSubjetiva) AS PromedioCargaSubjetiva
FROM CARGAENTRENAMIENTO
GROUP BY IDJugador;
