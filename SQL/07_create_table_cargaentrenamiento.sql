USE RendimientoRugby;
CREATE TABLE CARGAENTRENAMIENTO (
    IDCargaEntrenamiento BIGINT PRIMARY KEY,
    IDEntrenamiento BIGINT NOT NULL,
    IDJugador BIGINT NOT NULL,
    CargaSubjetiva INT,
    CargaObjetiva INT,
    FOREIGN KEY (IDEntrenamiento) REFERENCES ENTRENAMIENTO(IDEntrenamiento),
    FOREIGN KEY (IDJugador) REFERENCES JUGADOR(IDJugador)
);
