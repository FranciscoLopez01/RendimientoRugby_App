USE RendimientoRugby;

-- Insertar roles
INSERT INTO ROL (IDRol, Nombre) VALUES (1, 'Preparador Físico'), (2, 'Kinesiólogo'), (3, 'Jugador');

-- Insertar usuario
INSERT INTO USUARIO (IDUsuario, NombreUsuario, Email, IDRol)
VALUES (1, 'fmartinez', 'fmartinez@club.com', 1);

-- Insertar jugador
INSERT INTO JUGADOR (IDJugador, Nombre, Apellido, FechaNacimiento, DNI, Posicion, Altura, Peso)
VALUES (1, 'Juan', 'Pérez', '2001-05-12', '40123456', 'Centro', 1.82, 88.5);

-- Insertar entrenamiento
INSERT INTO ENTRENAMIENTO (IDEntrenamiento, Fecha, Tipo, Duracion)
VALUES (1, '2025-06-15', 'Resistencia', 60);

-- Insertar asistencia
INSERT INTO ASISTENCIA (IDAsistencia, IDJugador, IDEntrenamiento, Presente, Detalles)
VALUES (1, 1, 1, 1, 'Presente con leve molestia muscular');

-- Insertar carga
INSERT INTO CARGAENTRENAMIENTO (IDCargaEntrenamiento, IDEntrenamiento, IDJugador, CargaSubjetiva, CargaObjetiva)
VALUES (1, 1, 1, 7, 250);

-- Insertar evaluación
INSERT INTO EVALUACIONFISICA (IDEvaluacion, IDJugador, Fecha, Evaluador, Detalles)
VALUES (1, 1, '2025-06-14', 1, 'Evaluación mensual');

-- Insertar test
INSERT INTO TESTRENDIMIENTO (IDTest, IDEvaluacion, TipoTest, Resultado)
VALUES (1, 1, 'Bronco', '4:45');

-- Insertar lesión
INSERT INTO LESION (IDLesion, IDJugador, FechaLesion, TipoLesion, Gravedad, Detalles)
VALUES (1, 1, '2025-06-10', 'Distensión', 'Media', 'Muslo derecho');

-- Insertar recuperación
INSERT INTO RECUPERACION (IDPlanRecuperacion, IDLesion, FechaInicio, FechaFin, Detalles)
VALUES (1, 1, '2025-06-11', '2025-06-15', 'Rehabilitación con movilidad progresiva');
