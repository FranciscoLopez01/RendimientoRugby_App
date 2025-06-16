USE RendimientoRugby;
CREATE TABLE ASISTENCIA (
    IDAsistencia BIGINT PRIMARY KEY,
    IDJugador BIGINT NOT NULL,
    IDEntrenamiento BIGINT NOT NULL,
    Presente BIT NOT NULL,
    Detalles VARCHAR(255),
    FOREIGN KEY (IDJugador) REFERENCES JUGADOR(IDJugador),
    FOREIGN KEY (IDEntrenamiento) REFERENCES ENTRENAMIENTO(IDEntrenamiento)
);
