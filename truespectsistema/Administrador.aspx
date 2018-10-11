<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="truespectsistema.Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Nueva seccion administrador</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Registrar Usuarios</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nombres</label>
                                    <input type="text" class="form-control" runat="server" id="txtnombres" placeholder="Escriba su Nombre">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Apellidos</label>
                                    <input type="text" class="form-control" runat="server" id="txtapellidos" placeholder="Escriba su apellido">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Usuario</label>
                                    <input type="text" class="form-control" runat="server" id="txtusuario" placeholder="Crear Usuario">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contraseña</label>
                                    <input type="password" class="form-control" runat="server" id="txtcontraseña1" placeholder="Crear Contraseña">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contraseña</label>
                                    <input type="password" class="form-control" runat="server" id="txtcontraseña2" placeholder="Confirmar Contraseña">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">RFC</label>
                                    <input type="text" class="form-control" runat="server" id="txtrfc" placeholder="Ingrese Rfc">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Tipo de Usuario</label>
                                    <select class="form-control" runat="server" id="selectusuarios">
                                        <option>Seleccione</option>
                                        <option value="1">Administrador</option>
                                        <option value="2">Almacenista</option>
                                        <option value="3">Usuario</option>
                                    </select>
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
    <div class="box-footer">
        <input class="btn btn-primary" type="submit" id="btninsertarusuario" runat="server" onserverclick="Submit_Click" value="Crear Registro" />
    </div> 
</asp:Content>
