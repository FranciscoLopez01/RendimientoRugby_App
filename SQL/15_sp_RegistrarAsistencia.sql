USE RendimientoRugby;
GO
CREATE PROCEDURE sp_RegistrarAsistencia
    @IDJugador BIGINT,
    @IDEntrenamiento BIGINT,
    @Presente BIT,
    @Detalles VARCHAR(255),
    @CargaSubjetiva INT,
    @CargaObjetiva INT
AS
BEGIN
    DECLARE @IDAsistencia BIGINT = (SELECT ISNULL(MAX(IDAsistencia), 0) + 1 FROM ASISTENCIA);
    DECLARE @IDCarga BIGINT = (SELECT ISNULL(MAX(IDCargaEntrenamiento), 0) + 1 FROM CARGAENTRENAMIENTO);

    INSERT INTO ASISTENCIA (IDAsistencia, IDJugador, IDEntrenamiento, Presente, Detalles)
    VALUES (@IDAsistencia, @IDJugador, @IDEntrenamiento, @Presente, @Detalles);

    INSERT INTO CARGAENTRENAMIENTO (IDCargaEntrenamiento, IDEntrenamiento, IDJugador, CargaSubjetiva, CargaObjetiva)
    VALUES (@IDCarga, @IDEntrenamiento, @IDJugador, @CargaSubjetiva, @CargaObjetiva);
END;
