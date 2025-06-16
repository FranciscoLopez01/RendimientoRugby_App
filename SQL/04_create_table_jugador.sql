USE RendimientoRugby;
CREATE TABLE JUGADOR (
    IDJugador BIGINT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    DNI VARCHAR(20) UNIQUE NOT NULL,
    Posicion VARCHAR(50),
    Altura DECIMAL(5,2),
    Peso DECIMAL(5,2)
);
