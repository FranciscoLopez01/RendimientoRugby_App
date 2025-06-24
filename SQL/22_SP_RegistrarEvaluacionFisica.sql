USE RendimientoRugby;
GO

CREATE PROCEDURE RegistrarEvaluacionFisica
    @IDJugador BIGINT,
    @Fecha DATE,
    @Evaluador BIGINT,
    @Detalles VARCHAR(255)
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM EVALUACIONFISICA
        WHERE IDJugador = @IDJugador 
          AND DATEPART(WEEK, Fecha) = DATEPART(WEEK, @Fecha)
          AND DATEPART(YEAR, Fecha) = DATEPART(YEAR, @Fecha)
    )
    BEGIN
        PRINT 'Ya existe una evaluacion esa semana';
        RETURN;
    END

    IF EXISTS (
        SELECT 1 FROM LESION l
        LEFT JOIN RECUPERACION r ON l.IDLesion = r.IDLesion
        WHERE l.IDJugador = @IDJugador AND (r.FechaFin IS NULL OR r.FechaFin > @Fecha)
    )
    BEGIN
        PRINT 'Jugador en recuperacion. No se puede evaluar.';
        RETURN;
    END

    -- Insertar evaluación
    DECLARE @NuevoID BIGINT;
    SELECT @NuevoID = ISNULL(MAX(IDEvaluacion), 0) + 1 FROM EVALUACIONFISICA;

    INSERT INTO EVALUACIONFISICA (IDEvaluacion, IDJugador, Fecha, Evaluador, Detalles)
    VALUES (@NuevoID, @IDJugador, @Fecha, @Evaluador, @Detalles);
END;
GO