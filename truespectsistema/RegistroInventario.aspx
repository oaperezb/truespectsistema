<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RegistroInventario.aspx.cs" Inherits="truespectsistema.RegistroInventario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Registrar invetario</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">

                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Registrar Inventario</h3>
                        </div>
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-6">
                                        <label for="exampleInputEmail1">Categoria</label>
                                        <select id="ddlcategoria" class="form-control" runat="server"></select>
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputEmail4">Codigo</label>
                                        <input type="text" class="form-control" runat="server" id="txtcodigo" placeholder="Ingrese el codigo">
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputPassword4">Unidad</label>
                                        <input type="text" class="form-control" runat="server" id="txtunidad" placeholder="Ingrese la unidad">
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputEmail4">Cantidad Almacen 1</label>
                                        <input type="text" class="form-control" runat="server" id="txtcantidad_almacen1" placeholder="Ejemplo: 2">
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputPassword4">Cantidad Almacen 2</label>
                                        <input type="text" class="form-control" id="txtcantidad_almacen2" runat="server" placeholder="Ejemplo: 5">
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputEmail4">Descripcion Material</label>
                                        <textarea type="text" class="form-control" id="txtdescripcion_material" rows="3" runat="server" placeholder="Ingrese descripcion del material"></textarea>
                                    </div>

                                    <div class=" col-md-6">
                                        <label for="inputPassword4">Estado de Material</label>
                                        <select id="ddlestadomaterial" class="form-control" runat="server">
                                            <option value="Bueno">Bueno</option>
                                            <option value="Regular">Regular</option>
                                            <option value="Malo">Malo</option>
                                        </select>

                                        <label for="inputPassword4">Observacion</label>
                                        <select id="ddlobservacion" class="form-control" runat="server">
                                            <option value="Sin Observacion">Sin Observacion</option>
                                            <option value="HUMAPA">HUMAPA</option>
                                            <option value="HUMAPAN">HUMAPAN</option>
                                            <option value="NUEVO">NUEVO</option>
                                            <option value="SEMI NUEVO">SEMI NUEVO</option>
                                            <option value="Sin existencia/No se requiere por el momento">Sin existencia/No se requiere por el momento</option>
                                        </select>

                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputEmail4">Precio X unidad</label>
                                        <input type="text" class="form-control" runat="server" id="txtpreci_unidad" placeholder="ingrese Precio unitario">
                                    </div>
                                    <div class=" col-md-6">
                                        <label for="inputPassword4">Precio Total</label>
                                        <input type="text" class="form-control" runat="server" id="txtprecio_total" placeholder="Ingrese el precio total">
                                        <br />
                                    </div>


                                    <div class="form-group">

                                        <button type="button" class="btn btn-primary" data-toggle="modal" runat="server" data-target="#exampleModalLong">
                                            Registrar
                                        </button>
                                    </div>



                                </div>



                                <%-- ------------------------------------------------------------------%>


                                <!-- Button trigger modal -->
                            

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLongTitle">Autorizacion de Almacenista</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Usuario</label>
                                                    <input type="text" class="form-control" runat="server" id="txtusuario" placeholder="Ingresar usuario">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Contraseña</label>
                                                    <input type="password" class="form-control" runat="server" id="txtcontraseña1" placeholder="Ingresar Contraseña">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                <input class="btn btn-primary" type="submit" id="btninsertarusuario" runat="server" onserverclick="Submit_Click" value="Autorizar" />

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--                                ------------------------------%>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
            </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>
