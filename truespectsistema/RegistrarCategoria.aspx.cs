using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class RegistarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string categoriaexitosa = string.Empty;
            string categoriainexistente = string.Empty;
            string usuarioincorrecto = string.Empty;
            TruespectEntities db = new TruespectEntities();

            var usuario = (from q in db.usuarios
                           where q.usuario == txtusuario.Value && q.contraseña == txtcontraseña.Value && q.id_tpo_usuario == 2
                           select q).SingleOrDefault();
            var validacion_categoria = (from i in db.categoria
                                        where i.nombre_categoria == txtcategoria.Value
                                        select i).SingleOrDefault();
            if (validacion_categoria!=null)
            {
                 categoriainexistente = "alert('La Categoria que desea Registrar ya existe intente de nuevo...');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta",categoriainexistente, true);
            }
            else
            {
                if (usuario != null)
                {
                   
                    categoria ct = new categoria
                    {
                        nombre_categoria = txtcategoria.Value.ToUpper()
                    };
                    db.categoria.Add(ct);
                    db.SaveChanges();
                    limpiar();
                    categoriaexitosa = "alert('La Categoria se ha Registrado correctamente');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", categoriaexitosa, true);

                }
                else if(usuario==null || usuario.id_tpo_usuario != 2)
                {
                   usuarioincorrecto = "alert('Solo el Almacenista puede registrar categorias...');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta",usuarioincorrecto, true);
                }
            }

           
          
        }

        public void limpiar()
        {
            txtcategoria.Value = "";
            txtusuario.Value = "";
            txtcontraseña.Value = "";
        }
    }
}