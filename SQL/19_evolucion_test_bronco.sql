USE RendimientoRugby;
SELECT e.Fecha, t.Resultado
FROM TESTRENDIMIENTO t
JOIN EVALUACIONFISICA e ON t.IDEvaluacion = e.IDEvaluacion
WHERE t.TipoTest = 'Bronco' AND e.IDJugador = 1
ORDER BY e.Fecha;
