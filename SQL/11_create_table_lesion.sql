USE RendimientoRugby;
CREATE TABLE LESION (
    IDLesion BIGINT PRIMARY KEY,
    IDJugador BIGINT NOT NULL,
    FechaLesion DATE NOT NULL,
    TipoLesion VARCHAR(100),
    Gravedad VARCHAR(50),
    Detalles VARCHAR(255),
    FOREIGN KEY (IDJugador) REFERENCES JUGADOR(IDJugador)
);
