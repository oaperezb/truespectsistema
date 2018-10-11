using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Submit_Click(object sender, EventArgs e)
        {

            string contraseña = string.Empty;
            if (txtcontraseña1.Value == txtcontraseña2.Value)
            {
                contraseña = txtcontraseña1.Value;
            }
            string tpoUsuario = string.Empty;
            int valorusuario = Convert.ToInt32(selectusuarios.Value);
            switch (valorusuario)
            {
                case 1:
                    tpoUsuario = "ADMINISTRADOR";
                    break;
                case 2:
                    tpoUsuario = "ALMACENISTA";
                    break;
                case 3:
                    tpoUsuario = "USUARIO";
                    break;
            }
            TruespectEntities db1 = new TruespectEntities();
            var validar = (from p in db1.usuarios
                           where p.usuario == txtusuario.Value
                           select p).SingleOrDefault();

            if (validar != null)
            {
                string validarusuario = "alert('El usuario ya existe por favor cambie el usuario de acceso');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", validarusuario, true);
            }
            else
            {
                using (TruespectEntities db = new TruespectEntities())
                {
                    usuarios usuarios = new usuarios
                    {
                        nombres = txtnombres.Value.ToUpper(),
                        apellidos = txtapellidos.Value.ToUpper(),
                        usuario = txtusuario.Value.ToUpper(),
                        contraseña = contraseña,
                        rfc = txtrfc.Value.ToUpper(),
                        id_tpo_usuario = Convert.ToInt32(selectusuarios.Value),
                        tpo_usuario = tpoUsuario,
                        fecha_registro = System.DateTime.Now,
                        status = "ACTIVO"
                    };
                    db.usuarios.Add(usuarios);
                    db.SaveChanges();
                    limparregistro();
                    string script = "alert('Registro Exitoso');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                }
            }
        }

        public void limparregistro()
        {
            txtnombres.Value = "";
            txtapellidos.Value = "";
            txtcontraseña1.Value = "";
            txtcontraseña2.Value = "";
            txtrfc.Value = "";
            txtusuario.Value = "";
           
        }

       
    }
}