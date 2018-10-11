using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            TruespectEntities db = new TruespectEntities();
            var consulta = (from q in db.usuarios
                            where q.usuario == txtusuario.Value && q.contraseña == txtcontraseña.Value
                            select q).SingleOrDefault();

            if (consulta != null)
            {
                Session["usuario"] = consulta.usuario;
                Session["nombre"]=consulta.nombres+" "+consulta.apellidos;
                Response.Redirect("Inicio.aspx");

            }
            else
            {
                string validarusuario = "alert('El usuario o la Contraseña es Incorrecta');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", validarusuario, true);
            }
        }
    }
}