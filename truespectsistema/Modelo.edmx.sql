
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/11/2018 16:55:45
-- Generated from EDMX file: C:\Users\oaperezb\Documents\GitHub\truespectsistema\truespectsistema\Modelo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Truespect];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[anios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[anios];
GO
IF OBJECT_ID(N'[dbo].[categoria]', 'U') IS NOT NULL
    DROP TABLE [dbo].[categoria];
GO
IF OBJECT_ID(N'[dbo].[ciudades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ciudades];
GO
IF OBJECT_ID(N'[dbo].[estados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[estados];
GO
IF OBJECT_ID(N'[dbo].[meses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[meses];
GO
IF OBJECT_ID(N'[dbo].[registro_almacen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[registro_almacen];
GO
IF OBJECT_ID(N'[dbo].[sucursal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sucursal];
GO
IF OBJECT_ID(N'[dbo].[usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[usuarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'usuarios'
CREATE TABLE [dbo].[usuarios] (
    [id_empleado] int IDENTITY(1,1) NOT NULL,
    [nombres] varchar(50)  NOT NULL,
    [apellidos] varchar(50)  NOT NULL,
    [usuario] varchar(50)  NOT NULL,
    [contraseña] varchar(50)  NOT NULL,
    [tpo_usuario] varchar(50)  NOT NULL,
    [id_tpo_usuario] int  NOT NULL,
    [rfc] varchar(13)  NULL,
    [fecha_registro] datetime  NOT NULL,
    [fecha_baja] datetime  NULL,
    [status] varchar(50)  NOT NULL
);
GO

-- Creating table 'anios'
CREATE TABLE [dbo].[anios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [id_año] int  NULL,
    [AÑO] varchar(50)  NULL
);
GO

-- Creating table 'categoria'
CREATE TABLE [dbo].[categoria] (
    [id_categoria] int IDENTITY(1,1) NOT NULL,
    [nombre_categoria] varchar(500)  NOT NULL
);
GO

-- Creating table 'meses'
CREATE TABLE [dbo].[meses] (
    [ID_MES] int IDENTITY(1,1) NOT NULL,
    [MES] varchar(50)  NOT NULL
);
GO

-- Creating table 'registro_almacen'
CREATE TABLE [dbo].[registro_almacen] (
    [id_articulo] int IDENTITY(1,1) NOT NULL,
    [codigo_categoria] int  NOT NULL,
    [codigo] varchar(50)  NOT NULL,
    [cantidad_almacen1] int  NOT NULL,
    [cantidad_almacen2] int  NOT NULL,
    [unidad] varchar(50)  NULL,
    [descripcion_material] varchar(5000)  NULL,
    [estado_de_material] varchar(8)  NULL,
    [observacion] varchar(5000)  NULL,
    [fecha_ingresa] datetime  NULL,
    [fecha_salida] datetime  NULL,
    [precio_unidad] decimal(18,2)  NULL,
    [precio_total] decimal(18,2)  NULL,
    [usuario_registrar] varchar(50)  NULL,
    [nombre_usuario] varchar(50)  NULL,
    [apellido_usuario] varchar(50)  NULL
);
GO

-- Creating table 'ciudades'
CREATE TABLE [dbo].[ciudades] (
    [id_estados] int  NOT NULL,
    [id_ciudad] int  NOT NULL,
    [ciudad] varchar(50)  NOT NULL
);
GO

-- Creating table 'estados'
CREATE TABLE [dbo].[estados] (
    [id_estado] int IDENTITY(1,1) NOT NULL,
    [estado] varchar(500)  NOT NULL
);
GO

-- Creating table 'sucursal'
CREATE TABLE [dbo].[sucursal] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ciudad] varchar(50)  NOT NULL,
    [estado] varchar(80)  NOT NULL,
    [nombre_sucuarsal] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_empleado] in table 'usuarios'
ALTER TABLE [dbo].[usuarios]
ADD CONSTRAINT [PK_usuarios]
    PRIMARY KEY CLUSTERED ([id_empleado] ASC);
GO

-- Creating primary key on [id] in table 'anios'
ALTER TABLE [dbo].[anios]
ADD CONSTRAINT [PK_anios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id_categoria] in table 'categoria'
ALTER TABLE [dbo].[categoria]
ADD CONSTRAINT [PK_categoria]
    PRIMARY KEY CLUSTERED ([id_categoria] ASC);
GO

-- Creating primary key on [ID_MES] in table 'meses'
ALTER TABLE [dbo].[meses]
ADD CONSTRAINT [PK_meses]
    PRIMARY KEY CLUSTERED ([ID_MES] ASC);
GO

-- Creating primary key on [id_articulo] in table 'registro_almacen'
ALTER TABLE [dbo].[registro_almacen]
ADD CONSTRAINT [PK_registro_almacen]
    PRIMARY KEY CLUSTERED ([id_articulo] ASC);
GO

-- Creating primary key on [id_ciudad] in table 'ciudades'
ALTER TABLE [dbo].[ciudades]
ADD CONSTRAINT [PK_ciudades]
    PRIMARY KEY CLUSTERED ([id_ciudad] ASC);
GO

-- Creating primary key on [id_estado] in table 'estados'
ALTER TABLE [dbo].[estados]
ADD CONSTRAINT [PK_estados]
    PRIMARY KEY CLUSTERED ([id_estado] ASC);
GO

-- Creating primary key on [id] in table 'sucursal'
ALTER TABLE [dbo].[sucursal]
ADD CONSTRAINT [PK_sucursal]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------