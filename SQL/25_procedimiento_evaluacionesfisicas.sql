DELIMITER //
CREATE PROCEDURE SP_ReporteEvaluacionesFisicasPorJugador(
    IN p_IDJugador BIGINT,
    IN p_FechaDesde DATE,
    IN p_FechaHasta DATE
)
BEGIN
    SELECT 
        IDEvaluacion,
        Fecha,
        Evaluador,
        Detalles
    FROM EVALUACIONFISICA
    WHERE IDJugador = p_IDJugador
      AND Fecha BETWEEN p_FechaDesde AND p_FechaHasta;
END;
//
DELIMITER ;
