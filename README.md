# RendimientoRugby_App

Sistema de gestión integral del rendimiento deportivo para un club de rugby. Permite a entrenadores, preparadores físicos y kinesiólogos registrar y consultar datos físicos, test de rendimiento, lesiones, y planes de recuperación de los jugadores.


## Estructura

RendimientoRugby_App/
├── App/ # Aplicación de escritorio (Windows Forms)
├── SQL/ # Scripts SQL para creación de base de datos
├── .gitignore
└── README.md # Este archivo

---

##  Tecnologías utilizadas

- **C# (.NET Framework)** - Aplicación de escritorio con Windows Forms
- **SQL Server** - Base de datos relacional
- **Visual Studio 2022**
- **SSMS** - SQL Server Management Studio
- **Opcional:** MongoDB para evaluaciones en formato documental

---

## 🗃️ Base de datos

La base se encuentra dividida en scripts `.sql` dentro de la carpeta `/SQL/`, y contiene:

- Tablas normalizadas: `JUGADOR`, `ENTRENAMIENTO`, `ASISTENCIA`, `LESION`, etc.
- Vistas: `vw_JugadoresConLesiones`
- Procedimientos: `sp_RegistrarAsistencia`
- Triggers: `tr_BloquearLesionDuplicada`
- Carga de datos de prueba

📌 **Ejecutar en este orden:**
1. `01_create_database.sql`
2. Todos los scripts de `02_` a `20_` secuencialmente

---

## 🖥️ Aplicación WinForms

Permite:

- Visualizar los jugadores y sus lesiones (usando una vista SQL)
- Registrar nuevas asistencias a entrenamientos (invocando un SP)
- Interfaz sencilla y funcional para pruebas

### ✔️ Requisitos

- Visual Studio instalado
- Tener SQL Server funcionando
- Configurar conexión a base de datos en el **origen de datos** del formulario

---

## 👨‍🎓 Autor

**Grupo 89**  
Materia: Base de Datos II  
Universidad: UTN FRGP

---

## 📝 Observaciones

- El repositorio **no incluye archivos `.mdf`, `.ldf` ni backups de SQL Server**.
- La base debe crearse ejecutando los scripts `.sql` en un entorno local.
- La app WinForms es demostrativa, pensada para probar operaciones simples con la base de datos.

---
