using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class RegistroSucuarsal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                llenarestados();
            }
                
    
            
        }
        public void llenarestados()
        {
            TruespectEntities db = new TruespectEntities();

            var estados = (from q in db.estados
                           select new { id = q.id_estado, text = q.estado }).ToList();
            ddlestados.DataSource = estados;
            ddlestados.DataValueField = "id";
            ddlestados.DataTextField = "text";
            ddlestados.DataBind();
           
        }
       

        protected void ddlestados_SelectedIndexChanged(object sender, EventArgs e)
        {
            int estados = Convert.ToInt32(ddlestados.Text);
            TruespectEntities db = new TruespectEntities();

            var ciudad = (from q in db.ciudades
                          from p in db.estados
                          where q.id_estados == estados

                          select new { id = q.id_ciudad, texto = q.ciudad }).Distinct().ToList();
            ddlciudades.DataSource = ciudad;
            ddlciudades.DataValueField = "id";
            ddlciudades.DataTextField = "texto";
            ddlciudades.DataBind();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
         
            using(TruespectEntities db = new TruespectEntities())
            {
                sucursal sc = new sucursal
                {
                    estado = ddlestados.Text,
                    ciudad = ddlciudades.Text,
                    nombre_sucuarsal= txtsucursal.Value
                    
              
                };
                db.sucursal.Add(sc);
                db.SaveChanges();
                limpiar();
                string sucursal = "alert('Se ha creado la sucursal correctamente');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta",sucursal, true);
            }
        }
        public void limpiar()
        {
            txtsucursal.Value = "";
            ddlciudades.ClearSelection();
        }
    }
}