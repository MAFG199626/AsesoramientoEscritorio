//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Usuario_Beca
    {
        public int Id { get; set; }
        public int UsuarioId { get; set; }
        public int BecaId { get; set; }
    
        public virtual Usuario Usuario { get; set; }
        public virtual Beca Beca { get; set; }
    }
}
