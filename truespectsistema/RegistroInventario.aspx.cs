using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truespectsistema
{
    public partial class RegistroInventario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack==false)
            {

                llenarddl();
            }

        }
        public void llenarddl()
        {

            TruespectEntities db = new TruespectEntities();
            var llenar = (from q in db.categoria
                          select new { value=q.id_categoria, label=q.nombre_categoria }).ToList();


            ddlcategoria.DataSource = llenar;
            ddlcategoria.DataTextField = "label";
            ddlcategoria.DataValueField = "value";
            ddlcategoria.DataBind();
        }



        protected void Submit_Click(object sender, EventArgs e)
        { 
            TruespectEntities db1 = new TruespectEntities();
            var validaralmacen = (from j in db1.usuarios
                                  where j.usuario == txtusuario.Value && j.contraseña == txtcontraseña1.Value && j.id_tpo_usuario==2
                                  select j).SingleOrDefault();
            if (validaralmacen!=null){

                if (validaralmacen.id_tpo_usuario == 2)
                {


                    using (TruespectEntities db = new TruespectEntities())
                    {
                        if(txtcantidad_almacen1.Value=="" )
                        {
                            txtcantidad_almacen1.Value ="0";
                           
                        }
                        if(txtcantidad_almacen2.Value == "")
                        {

                            txtcantidad_almacen2.Value = "0";
                        }
                        string estado = ddlestadomaterial.Value;
                        registro_almacen ra = new registro_almacen
                        {
                            codigo = txtcodigo.Value.ToUpper(),
                            cantidad_almacen1 = Convert.ToInt32(txtcantidad_almacen1.Value),
                            cantidad_almacen2 = Convert.ToInt32(txtcantidad_almacen2.Value),
                            unidad = txtunidad.Value.ToUpper(),
                            descripcion_material = txtdescripcion_material.Value.ToUpper().Trim(),
                            estado_de_material = ddlestadomaterial.Value.ToUpper(),
                            observacion = ddlobservacion.Value,
                            codigo_categoria = Convert.ToInt32(ddlcategoria.Value),
                            precio_total = Convert.ToDecimal(txtprecio_total.Value),
                            precio_unidad = Convert.ToDecimal(txtpreci_unidad.Value),
                            usuario_registrar = validaralmacen.usuario.ToUpper(),
                            apellido_usuario = validaralmacen.apellidos.ToUpper(),
                            nombre_usuario = validaralmacen.nombres.ToUpper(),
                            fecha_ingresa = System.DateTime.Now

                            
                        };
                        db.registro_almacen.Add(ra);
                        db.SaveChanges();
                        limpiar();
                        string registroexitoso = "alert('Registro Exitoso');";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", registroexitoso, true);
                    }
                }else if(validaralmacen.id_tpo_usuario != 2)
                {
                   string  usuarioincorrecto = "alert('Solo el Almacenista puede registrar articulos...');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", usuarioincorrecto, true);
                }
            }
            else
            {
                string usuarioincorrecto = "alert('El usuario o la contraseña es incorrecto');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", usuarioincorrecto, true);
            }



        }
        public void limpiar()
        {
            txtcodigo.Value = "";
            txtcantidad_almacen1.Value = "";
            txtcantidad_almacen2.Value = "";
            txtunidad.Value = "";
            txtdescripcion_material.Value = "";
            txtprecio_total.Value = "";
            txtpreci_unidad.Value = "";
            txtusuario.Value = "";
            txtcontraseña1.Value = "";
        }
    
    }
}