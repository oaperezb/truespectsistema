using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbusuario.Text =Convert.ToString( Session["usuario"]);
          
        }
        protected void cerrar_session(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            if ((string)Session["usuario"] == "")
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}