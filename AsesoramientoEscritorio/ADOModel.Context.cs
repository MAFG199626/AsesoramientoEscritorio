﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AsesoramientoEscritorio
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ADOModelContainer : DbContext
    {
        public ADOModelContainer()
            : base("name=ADOModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Usuario> Usuarios { get; set; }
        public virtual DbSet<Asesor> AsesoresVocacionales { get; set; }
        public virtual DbSet<OfertaAcademica> OfertasAcademicas { get; set; }
        public virtual DbSet<ResultadoDePrueba> RegistrosDePruebasDeAptitudes { get; set; }
        public virtual DbSet<Departamento> Departamentos { get; set; }
        public virtual DbSet<Municipio> Municipios { get; set; }
        public virtual DbSet<Institucion> Instituciones { get; set; }
        public virtual DbSet<Curso> Cursos { get; set; }
        public virtual DbSet<Beca> Becas { get; set; }
        public virtual DbSet<OfertaLaboral> OfertasLaborales { get; set; }
        public virtual DbSet<Empresa> Empresas { get; set; }
        public virtual DbSet<Prueba> PruebasDeAptitudes { get; set; }
        public virtual DbSet<Genero> Generos { get; set; }
        public virtual DbSet<Asesoramiento> Asesoramientos { get; set; }
        public virtual DbSet<Usuario_OfertaAcademica> Usuarios_OfertasAcademicas { get; set; }
        public virtual DbSet<Usuario_Beca> Usuarios_Becas { get; set; }
        public virtual DbSet<Usuario_OfertaLaboral> Usuarios_OfertasLaborales { get; set; }
        public virtual DbSet<Usuario_Curso> Usuarios_Cursos { get; set; }
        public virtual DbSet<Tipo> Tipos { get; set; }
    }
}
