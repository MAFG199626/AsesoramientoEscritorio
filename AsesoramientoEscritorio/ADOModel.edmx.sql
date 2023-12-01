
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/28/2023 14:55:48
-- Generated from EDMX file: C:\Users\PC-erdos\source\repos\AsesoramientoEscritorio\AsesoramientoEscritorio\ADOModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Ejercicio25BD];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DepartamentoMunicipio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Municipios] DROP CONSTRAINT [FK_DepartamentoMunicipio];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartamentoUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_DepartamentoUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_InstitucionOfertaAcademica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfertasAcademicas] DROP CONSTRAINT [FK_InstitucionOfertaAcademica];
GO
IF OBJECT_ID(N'[dbo].[FK_InstitucionBeca]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Becas] DROP CONSTRAINT [FK_InstitucionBeca];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpresaOfertaLaboral]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfertasLaborales] DROP CONSTRAINT [FK_EmpresaOfertaLaboral];
GO
IF OBJECT_ID(N'[dbo].[FK_GeneroUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_GeneroUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioAsesoramiento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asesoramientos] DROP CONSTRAINT [FK_UsuarioAsesoramiento];
GO
IF OBJECT_ID(N'[dbo].[FK_AsesorAsesoramiento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asesoramientos] DROP CONSTRAINT [FK_AsesorAsesoramiento];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioResultadoDePrueba]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistrosDePruebasDeAptitudes] DROP CONSTRAINT [FK_UsuarioResultadoDePrueba];
GO
IF OBJECT_ID(N'[dbo].[FK_PruebaResultadoDePrueba]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistrosDePruebasDeAptitudes] DROP CONSTRAINT [FK_PruebaResultadoDePrueba];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioUsuario_OfertaAcademica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_OfertasAcademicas] DROP CONSTRAINT [FK_UsuarioUsuario_OfertaAcademica];
GO
IF OBJECT_ID(N'[dbo].[FK_OfertaAcademicaUsuario_OfertaAcademica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_OfertasAcademicas] DROP CONSTRAINT [FK_OfertaAcademicaUsuario_OfertaAcademica];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioUsuario_Beca]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Becas] DROP CONSTRAINT [FK_UsuarioUsuario_Beca];
GO
IF OBJECT_ID(N'[dbo].[FK_BecaUsuario_Beca]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Becas] DROP CONSTRAINT [FK_BecaUsuario_Beca];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioUsuario_OfertaLaboral]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_OfertasLaborales] DROP CONSTRAINT [FK_UsuarioUsuario_OfertaLaboral];
GO
IF OBJECT_ID(N'[dbo].[FK_OfertaLaboralUsuario_OfertaLaboral]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_OfertasLaborales] DROP CONSTRAINT [FK_OfertaLaboralUsuario_OfertaLaboral];
GO
IF OBJECT_ID(N'[dbo].[FK_CursoUsuario_Curso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Cursos] DROP CONSTRAINT [FK_CursoUsuario_Curso];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioUsuario_Curso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Cursos] DROP CONSTRAINT [FK_UsuarioUsuario_Curso];
GO
IF OBJECT_ID(N'[dbo].[FK_TipoUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_TipoUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_CursoOfertaAcademica]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfertasAcademicas] DROP CONSTRAINT [FK_CursoOfertaAcademica];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO
IF OBJECT_ID(N'[dbo].[AsesoresVocacionales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AsesoresVocacionales];
GO
IF OBJECT_ID(N'[dbo].[OfertasAcademicas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfertasAcademicas];
GO
IF OBJECT_ID(N'[dbo].[RegistrosDePruebasDeAptitudes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegistrosDePruebasDeAptitudes];
GO
IF OBJECT_ID(N'[dbo].[Departamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departamentos];
GO
IF OBJECT_ID(N'[dbo].[Municipios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Municipios];
GO
IF OBJECT_ID(N'[dbo].[Instituciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Instituciones];
GO
IF OBJECT_ID(N'[dbo].[Cursos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cursos];
GO
IF OBJECT_ID(N'[dbo].[Becas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Becas];
GO
IF OBJECT_ID(N'[dbo].[OfertasLaborales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfertasLaborales];
GO
IF OBJECT_ID(N'[dbo].[Empresas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empresas];
GO
IF OBJECT_ID(N'[dbo].[PruebasDeAptitudes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PruebasDeAptitudes];
GO
IF OBJECT_ID(N'[dbo].[Generos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Generos];
GO
IF OBJECT_ID(N'[dbo].[Asesoramientos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asesoramientos];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_OfertasAcademicas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_OfertasAcademicas];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_Becas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_Becas];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_OfertasLaborales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_OfertasLaborales];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_Cursos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_Cursos];
GO
IF OBJECT_ID(N'[dbo].[Tipos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tipos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [GeneroId] int  NOT NULL,
    [DepartamentoId] int  NOT NULL,
    [TipoId] int  NOT NULL,
    [PreferenciasVocacionales] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AsesoresVocacionales'
CREATE TABLE [dbo].[AsesoresVocacionales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Especialidad] nvarchar(max)  NOT NULL,
    [DisponibilidadDias] nvarchar(max)  NOT NULL,
    [DisponibilidadHoras] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OfertasAcademicas'
CREATE TABLE [dbo].[OfertasAcademicas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [CursoId] int  NOT NULL,
    [InstitucionId] int  NOT NULL,
    [FechaDeInicio] datetime  NOT NULL,
    [FechaDeFin] datetime  NOT NULL
);
GO

-- Creating table 'RegistrosDePruebasDeAptitudes'
CREATE TABLE [dbo].[RegistrosDePruebasDeAptitudes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UsuarioId] int  NOT NULL,
    [PruebaId] int  NOT NULL,
    [Vocacion] nvarchar(max)  NOT NULL,
    [Puntuacion] decimal(18,0)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Departamentos'
CREATE TABLE [dbo].[Departamentos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Municipios'
CREATE TABLE [dbo].[Municipios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DepartamentoId] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Instituciones'
CREATE TABLE [dbo].[Instituciones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Enlace] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cursos'
CREATE TABLE [dbo].[Cursos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Becas'
CREATE TABLE [dbo].[Becas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [InstitucionId] int  NOT NULL
);
GO

-- Creating table 'OfertasLaborales'
CREATE TABLE [dbo].[OfertasLaborales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Habilidades] nvarchar(max)  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Salario] decimal(18,0)  NOT NULL,
    [EmpresaId] int  NOT NULL
);
GO

-- Creating table 'Empresas'
CREATE TABLE [dbo].[Empresas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Enlace] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PruebasDeAptitudes'
CREATE TABLE [dbo].[PruebasDeAptitudes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL,
    [UsuarioId] int  NOT NULL
);
GO

-- Creating table 'Generos'
CREATE TABLE [dbo].[Generos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Asesoramientos'
CREATE TABLE [dbo].[Asesoramientos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL,
    [AsesorId] int  NOT NULL,
    [UsuarioId] int  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Usuarios_OfertasAcademicas'
CREATE TABLE [dbo].[Usuarios_OfertasAcademicas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UsuarioId] int  NOT NULL,
    [OfertaAcademicaId] int  NOT NULL
);
GO

-- Creating table 'Usuarios_Becas'
CREATE TABLE [dbo].[Usuarios_Becas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UsuarioId] int  NOT NULL,
    [BecaId] int  NOT NULL
);
GO

-- Creating table 'Usuarios_OfertasLaborales'
CREATE TABLE [dbo].[Usuarios_OfertasLaborales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UsuarioId] int  NOT NULL,
    [OfertaLaboralId] int  NOT NULL
);
GO

-- Creating table 'Usuarios_Cursos'
CREATE TABLE [dbo].[Usuarios_Cursos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UsuarioId] int  NOT NULL,
    [CursoId] int  NOT NULL
);
GO

-- Creating table 'Tipos'
CREATE TABLE [dbo].[Tipos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AsesoresVocacionales'
ALTER TABLE [dbo].[AsesoresVocacionales]
ADD CONSTRAINT [PK_AsesoresVocacionales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OfertasAcademicas'
ALTER TABLE [dbo].[OfertasAcademicas]
ADD CONSTRAINT [PK_OfertasAcademicas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RegistrosDePruebasDeAptitudes'
ALTER TABLE [dbo].[RegistrosDePruebasDeAptitudes]
ADD CONSTRAINT [PK_RegistrosDePruebasDeAptitudes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departamentos'
ALTER TABLE [dbo].[Departamentos]
ADD CONSTRAINT [PK_Departamentos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Municipios'
ALTER TABLE [dbo].[Municipios]
ADD CONSTRAINT [PK_Municipios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Instituciones'
ALTER TABLE [dbo].[Instituciones]
ADD CONSTRAINT [PK_Instituciones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cursos'
ALTER TABLE [dbo].[Cursos]
ADD CONSTRAINT [PK_Cursos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Becas'
ALTER TABLE [dbo].[Becas]
ADD CONSTRAINT [PK_Becas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OfertasLaborales'
ALTER TABLE [dbo].[OfertasLaborales]
ADD CONSTRAINT [PK_OfertasLaborales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Empresas'
ALTER TABLE [dbo].[Empresas]
ADD CONSTRAINT [PK_Empresas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PruebasDeAptitudes'
ALTER TABLE [dbo].[PruebasDeAptitudes]
ADD CONSTRAINT [PK_PruebasDeAptitudes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Generos'
ALTER TABLE [dbo].[Generos]
ADD CONSTRAINT [PK_Generos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Asesoramientos'
ALTER TABLE [dbo].[Asesoramientos]
ADD CONSTRAINT [PK_Asesoramientos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios_OfertasAcademicas'
ALTER TABLE [dbo].[Usuarios_OfertasAcademicas]
ADD CONSTRAINT [PK_Usuarios_OfertasAcademicas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios_Becas'
ALTER TABLE [dbo].[Usuarios_Becas]
ADD CONSTRAINT [PK_Usuarios_Becas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios_OfertasLaborales'
ALTER TABLE [dbo].[Usuarios_OfertasLaborales]
ADD CONSTRAINT [PK_Usuarios_OfertasLaborales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios_Cursos'
ALTER TABLE [dbo].[Usuarios_Cursos]
ADD CONSTRAINT [PK_Usuarios_Cursos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tipos'
ALTER TABLE [dbo].[Tipos]
ADD CONSTRAINT [PK_Tipos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartamentoId] in table 'Municipios'
ALTER TABLE [dbo].[Municipios]
ADD CONSTRAINT [FK_DepartamentoMunicipio]
    FOREIGN KEY ([DepartamentoId])
    REFERENCES [dbo].[Departamentos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartamentoMunicipio'
CREATE INDEX [IX_FK_DepartamentoMunicipio]
ON [dbo].[Municipios]
    ([DepartamentoId]);
GO

-- Creating foreign key on [DepartamentoId] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [FK_DepartamentoUsuario]
    FOREIGN KEY ([DepartamentoId])
    REFERENCES [dbo].[Departamentos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartamentoUsuario'
CREATE INDEX [IX_FK_DepartamentoUsuario]
ON [dbo].[Usuarios]
    ([DepartamentoId]);
GO

-- Creating foreign key on [InstitucionId] in table 'OfertasAcademicas'
ALTER TABLE [dbo].[OfertasAcademicas]
ADD CONSTRAINT [FK_InstitucionOfertaAcademica]
    FOREIGN KEY ([InstitucionId])
    REFERENCES [dbo].[Instituciones]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstitucionOfertaAcademica'
CREATE INDEX [IX_FK_InstitucionOfertaAcademica]
ON [dbo].[OfertasAcademicas]
    ([InstitucionId]);
GO

-- Creating foreign key on [InstitucionId] in table 'Becas'
ALTER TABLE [dbo].[Becas]
ADD CONSTRAINT [FK_InstitucionBeca]
    FOREIGN KEY ([InstitucionId])
    REFERENCES [dbo].[Instituciones]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstitucionBeca'
CREATE INDEX [IX_FK_InstitucionBeca]
ON [dbo].[Becas]
    ([InstitucionId]);
GO

-- Creating foreign key on [EmpresaId] in table 'OfertasLaborales'
ALTER TABLE [dbo].[OfertasLaborales]
ADD CONSTRAINT [FK_EmpresaOfertaLaboral]
    FOREIGN KEY ([EmpresaId])
    REFERENCES [dbo].[Empresas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpresaOfertaLaboral'
CREATE INDEX [IX_FK_EmpresaOfertaLaboral]
ON [dbo].[OfertasLaborales]
    ([EmpresaId]);
GO

-- Creating foreign key on [GeneroId] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [FK_GeneroUsuario]
    FOREIGN KEY ([GeneroId])
    REFERENCES [dbo].[Generos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GeneroUsuario'
CREATE INDEX [IX_FK_GeneroUsuario]
ON [dbo].[Usuarios]
    ([GeneroId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Asesoramientos'
ALTER TABLE [dbo].[Asesoramientos]
ADD CONSTRAINT [FK_UsuarioAsesoramiento]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioAsesoramiento'
CREATE INDEX [IX_FK_UsuarioAsesoramiento]
ON [dbo].[Asesoramientos]
    ([UsuarioId]);
GO

-- Creating foreign key on [AsesorId] in table 'Asesoramientos'
ALTER TABLE [dbo].[Asesoramientos]
ADD CONSTRAINT [FK_AsesorAsesoramiento]
    FOREIGN KEY ([AsesorId])
    REFERENCES [dbo].[AsesoresVocacionales]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AsesorAsesoramiento'
CREATE INDEX [IX_FK_AsesorAsesoramiento]
ON [dbo].[Asesoramientos]
    ([AsesorId]);
GO

-- Creating foreign key on [UsuarioId] in table 'RegistrosDePruebasDeAptitudes'
ALTER TABLE [dbo].[RegistrosDePruebasDeAptitudes]
ADD CONSTRAINT [FK_UsuarioResultadoDePrueba]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioResultadoDePrueba'
CREATE INDEX [IX_FK_UsuarioResultadoDePrueba]
ON [dbo].[RegistrosDePruebasDeAptitudes]
    ([UsuarioId]);
GO

-- Creating foreign key on [PruebaId] in table 'RegistrosDePruebasDeAptitudes'
ALTER TABLE [dbo].[RegistrosDePruebasDeAptitudes]
ADD CONSTRAINT [FK_PruebaResultadoDePrueba]
    FOREIGN KEY ([PruebaId])
    REFERENCES [dbo].[PruebasDeAptitudes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PruebaResultadoDePrueba'
CREATE INDEX [IX_FK_PruebaResultadoDePrueba]
ON [dbo].[RegistrosDePruebasDeAptitudes]
    ([PruebaId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Usuarios_OfertasAcademicas'
ALTER TABLE [dbo].[Usuarios_OfertasAcademicas]
ADD CONSTRAINT [FK_UsuarioUsuario_OfertaAcademica]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioUsuario_OfertaAcademica'
CREATE INDEX [IX_FK_UsuarioUsuario_OfertaAcademica]
ON [dbo].[Usuarios_OfertasAcademicas]
    ([UsuarioId]);
GO

-- Creating foreign key on [OfertaAcademicaId] in table 'Usuarios_OfertasAcademicas'
ALTER TABLE [dbo].[Usuarios_OfertasAcademicas]
ADD CONSTRAINT [FK_OfertaAcademicaUsuario_OfertaAcademica]
    FOREIGN KEY ([OfertaAcademicaId])
    REFERENCES [dbo].[OfertasAcademicas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OfertaAcademicaUsuario_OfertaAcademica'
CREATE INDEX [IX_FK_OfertaAcademicaUsuario_OfertaAcademica]
ON [dbo].[Usuarios_OfertasAcademicas]
    ([OfertaAcademicaId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Usuarios_Becas'
ALTER TABLE [dbo].[Usuarios_Becas]
ADD CONSTRAINT [FK_UsuarioUsuario_Beca]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioUsuario_Beca'
CREATE INDEX [IX_FK_UsuarioUsuario_Beca]
ON [dbo].[Usuarios_Becas]
    ([UsuarioId]);
GO

-- Creating foreign key on [BecaId] in table 'Usuarios_Becas'
ALTER TABLE [dbo].[Usuarios_Becas]
ADD CONSTRAINT [FK_BecaUsuario_Beca]
    FOREIGN KEY ([BecaId])
    REFERENCES [dbo].[Becas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BecaUsuario_Beca'
CREATE INDEX [IX_FK_BecaUsuario_Beca]
ON [dbo].[Usuarios_Becas]
    ([BecaId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Usuarios_OfertasLaborales'
ALTER TABLE [dbo].[Usuarios_OfertasLaborales]
ADD CONSTRAINT [FK_UsuarioUsuario_OfertaLaboral]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioUsuario_OfertaLaboral'
CREATE INDEX [IX_FK_UsuarioUsuario_OfertaLaboral]
ON [dbo].[Usuarios_OfertasLaborales]
    ([UsuarioId]);
GO

-- Creating foreign key on [OfertaLaboralId] in table 'Usuarios_OfertasLaborales'
ALTER TABLE [dbo].[Usuarios_OfertasLaborales]
ADD CONSTRAINT [FK_OfertaLaboralUsuario_OfertaLaboral]
    FOREIGN KEY ([OfertaLaboralId])
    REFERENCES [dbo].[OfertasLaborales]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OfertaLaboralUsuario_OfertaLaboral'
CREATE INDEX [IX_FK_OfertaLaboralUsuario_OfertaLaboral]
ON [dbo].[Usuarios_OfertasLaborales]
    ([OfertaLaboralId]);
GO

-- Creating foreign key on [CursoId] in table 'Usuarios_Cursos'
ALTER TABLE [dbo].[Usuarios_Cursos]
ADD CONSTRAINT [FK_CursoUsuario_Curso]
    FOREIGN KEY ([CursoId])
    REFERENCES [dbo].[Cursos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CursoUsuario_Curso'
CREATE INDEX [IX_FK_CursoUsuario_Curso]
ON [dbo].[Usuarios_Cursos]
    ([CursoId]);
GO

-- Creating foreign key on [UsuarioId] in table 'Usuarios_Cursos'
ALTER TABLE [dbo].[Usuarios_Cursos]
ADD CONSTRAINT [FK_UsuarioUsuario_Curso]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioUsuario_Curso'
CREATE INDEX [IX_FK_UsuarioUsuario_Curso]
ON [dbo].[Usuarios_Cursos]
    ([UsuarioId]);
GO

-- Creating foreign key on [TipoId] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [FK_TipoUsuario]
    FOREIGN KEY ([TipoId])
    REFERENCES [dbo].[Tipos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoUsuario'
CREATE INDEX [IX_FK_TipoUsuario]
ON [dbo].[Usuarios]
    ([TipoId]);
GO

-- Creating foreign key on [CursoId] in table 'OfertasAcademicas'
ALTER TABLE [dbo].[OfertasAcademicas]
ADD CONSTRAINT [FK_CursoOfertaAcademica]
    FOREIGN KEY ([CursoId])
    REFERENCES [dbo].[Cursos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CursoOfertaAcademica'
CREATE INDEX [IX_FK_CursoOfertaAcademica]
ON [dbo].[OfertasAcademicas]
    ([CursoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------