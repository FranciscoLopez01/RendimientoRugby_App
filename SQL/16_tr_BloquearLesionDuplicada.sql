USE RendimientoRugby;
GO
CREATE TRIGGER tr_BloquearLesionDuplicada
ON LESION
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN LESION l ON i.IDJugador = l.IDJugador
        WHERE DATEDIFF(DAY, l.FechaLesion, i.FechaLesion) BETWEEN 0 AND 14
          AND i.IDLesion <> l.IDLesion
    )
    BEGIN
        RAISERROR('Ya existe una lesión registrada en los últimos 14 días para este jugador.', 16, 1);
        ROLLBACK;
    END
END;
