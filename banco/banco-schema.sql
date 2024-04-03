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
