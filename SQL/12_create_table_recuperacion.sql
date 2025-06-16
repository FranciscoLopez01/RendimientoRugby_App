USE RendimientoRugby;
CREATE TABLE RECUPERACION (
    IDPlanRecuperacion BIGINT PRIMARY KEY,
    IDLesion BIGINT NOT NULL,
    FechaInicio DATE,
    FechaFin DATE,
    Detalles VARCHAR(255),
    FOREIGN KEY (IDLesion) REFERENCES LESION(IDLesion)
);
