USE RendimientoRugby;
CREATE TABLE ENTRENAMIENTO (
    IDEntrenamiento BIGINT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Tipo VARCHAR(50),
    Duracion INT
);
