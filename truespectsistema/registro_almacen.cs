//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace truespectsistema
{
    using System;
    using System.Collections.Generic;
    
    public partial class registro_almacen
    {
        public int id_articulo { get; set; }
        public int codigo_categoria { get; set; }
        public string codigo { get; set; }
        public int cantidad_almacen1 { get; set; }
        public int cantidad_almacen2 { get; set; }
        public string unidad { get; set; }
        public string descripcion_material { get; set; }
        public string estado_de_material { get; set; }
        public string observacion { get; set; }
        public Nullable<System.DateTime> fecha_ingresa { get; set; }
        public Nullable<System.DateTime> fecha_salida { get; set; }
        public Nullable<decimal> precio_unidad { get; set; }
        public Nullable<decimal> precio_total { get; set; }
        public string usuario_registrar { get; set; }
        public string nombre_usuario { get; set; }
        public string apellido_usuario { get; set; }
    }
}
