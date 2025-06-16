USE RendimientoRugby;
CREATE TABLE RUTINA (
    IDRutina BIGINT PRIMARY KEY,
    IDJugador BIGINT NOT NULL,
    Objetivo VARCHAR(255),
    FechaAsignacion DATE,
    Duracion INT,
    Detalles VARCHAR(255),
    FOREIGN KEY (IDJugador) REFERENCES JUGADOR(IDJugador)
);
