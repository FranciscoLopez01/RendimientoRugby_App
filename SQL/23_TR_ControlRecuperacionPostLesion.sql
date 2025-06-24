USE RendimientoRugby;
GO

CREATE TRIGGER controlRecuperacionPostLesion
ON CARGAENTRENAMIENTO
FOR INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN LESION l ON i.IDJugador = l.IDJugador
        LEFT JOIN RECUPERACION r ON l.IDLesion = r.IDLesion
        WHERE r.FechaFin IS NULL
    )
    BEGIN
        PRINT 'El jugador todavia no tiene el alta medica.';
        ROLLBACK;
    END
END;
GO