DELIMITER //
CREATE TRIGGER TR_AfterDelete_EvaluacionFisica
AFTER DELETE ON EVALUACIONFISICA
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIA_BAJA_EVALUACIONFISICA
        (IDEvaluacion, IDJugador, Fecha, Evaluador, Detalles, UsuarioElimino)
    VALUES
        (OLD.IDEvaluacion, OLD.IDJugador, OLD.Fecha, OLD.Evaluador, OLD.Detalles, USER());
END;
//
DELIMITER ;
