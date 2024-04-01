-- TABLE
CREATE TABLE "Clientes" ("nombreCli" varchar(50), "dniCli" varchar(10) PRIMARY KEY  NOT NULL , "domicilio" varchar(50));
CREATE TABLE "CtaCli" ("dniCli" varchar(10) NOT NULL ,"numeroCta" varchar(5) NOT NULL , PRIMARY KEY ("dniCli","numeroCta") );
CREATE TABLE "Cuentas" ("numeroCta" varchar(5) PRIMARY KEY  NOT NULL , "saldo" float, "nombreSuc" varchar(50));
CREATE TABLE "Empleados" ("nombreEmp" varchar(50), "dniEmp" varchar(10) PRIMARY KEY  NOT NULL , "telefono" varchar(10), "nombreSuc" varchar(50));
CREATE TABLE "Sucursales" ("nombreSuc" varchar(50) PRIMARY KEY  NOT NULL , "ciudadSuc" varchar(50), "activo" FLOAT);
CREATE TABLE "Transacciones" ("numeroCta" varchar(5) NOT NULL , "numeroTrans" varchar(5) NOT NULL , "fecha" date, "importe" float, PRIMARY KEY ("numeroCta", "numeroTrans"));
 
CREATE TABLE Clientes (
    nombreCli varchar(50), 
    dniCli varchar(10) NOT NULL, 
    domicilio varchar(50),
    PRIMARY KEY (dniCli)
);

CREATE TABLE Cuentas (
    numeroCta varchar(5) NOT NULL, 
    saldo float, 
    nombreSuc varchar(50),
    PRIMARY KEY (numeroCta),
    FOREIGN KEY (nombreSuc) REFERENCES Sucursales(nombreSuc)
);

CREATE TABLE CtaCli (
    dniCli varchar(10) NOT NULL, 
    numeroCta varchar(5) NOT NULL, 
    PRIMARY KEY (dniCli, numeroCta),
    FOREIGN KEY (dniCli) REFERENCES Clientes(dniCli)
);

CREATE TABLE Empleados (
    nombreEmp varchar(50), 
    dniEmp varchar(10) NOT NULL, 
    telefono varchar(10), 
    nombreSuc varchar(50), 
    PRIMARY KEY (dniEmp),
    FOREIGN KEY (nombreSuc) REFERENCES Sucursales(nombreSuc)
);

CREATE TABLE Sucursales (
    nombreSuc varchar(50) NOT NULL, 
    ciudadSuc varchar(50), 
    activo FLOAT
    PRIMARY KEY (nombreSuc)
);

CREATE TABLE Transacciones (
    numeroCta varchar(5) NOT NULL, 
    numeroTrans varchar(5) NOT NULL, 
    fecha date, 
    importe float, 
    PRIMARY KEY (numeroCta, numeroTrans), 
    FOREIGN KEY (numeroCta) REFERENCES Cuentas(numeroCta)
);

-- INDEX
 
-- TRIGGER
 
-- VIEW
CREATE VIEW activoPorCiudad AS
select ciudadsuc, sum(activo) as sumaactivo
from sucursales
group by ciudadsuc;
CREATE VIEW EmpleCiudad AS
SELECT nombreEmp, telefono, ciudadSuc
FROM Empleados, Sucursales
WHERE Empleados.nombreSuc = Sucursales.nombreSuc;
 
