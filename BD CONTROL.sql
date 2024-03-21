CREATE DATABASE GESTION 
GO

CREATE TABLE Persona (
    IDPersona INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Estado VARCHAR(50)
);

CREATE TABLE Empleado (
    IDEmpleado INT PRIMARY KEY,
    IDPersona INT,
    Puesto VARCHAR(100),
    Salario DECIMAL(10, 2),
    FechaContratacion DATE,
    FOREIGN KEY (IDPersona) REFERENCES Persona(IDPersona)
);


INSERT INTO Persona (IDPersona, Nombre, Apellido, Estado) 
VALUES (1, 'Juan', 'Pérez', 'Activo');

INSERT INTO Persona (IDPersona, Nombre, Apellido, Estado) 
VALUES (2, 'María', 'López', 'Activo');

INSERT INTO Persona (IDPersona, Nombre, Apellido, Estado) 
VALUES (3, 'Carlos', 'González', 'Inactivo');

select * from  Persona 

INSERT INTO Empleado (IDEmpleado, IDPersona, Puesto, Salario, FechaContratacion)
VALUES (1, 1, 'Gerente', 50000.00, '2023-01-15');

INSERT INTO Empleado (IDEmpleado, IDPersona, Puesto, Salario, FechaContratacion)
VALUES (2, 2, 'Vendedor', 30000.00, '2023-02-20');

INSERT INTO Empleado (IDEmpleado, IDPersona, Puesto, Salario, FechaContratacion)
VALUES (3, 3, 'Contador', 45000.00, '2022-11-10');

select* from Empleado