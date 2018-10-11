<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RegistrarCategoria.aspx.cs" Inherits="truespectsistema.RegistarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Registro de Categorrias</title>
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
                            <h3 class="box-title">Registrar Categorias</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Ingrese la categoria del articulo</label>
                                    <input type="text" class="form-control" runat="server" id="txtcategoria" placeholder="ingresar categoria">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Usuarrio</label>
                                    <input type="text" class="form-control" runat="server" id="txtusuario" placeholder="Confirmar Contraseña">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contraseña</label>
                                    <input type="password" class="form-control" runat="server" id="txtcontraseña" placeholder="Confirmar Contraseña">
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
        <input class="btn btn-primary" type="submit" id="btninsertarusuario" runat="server" onserverclick="Submit_Click" value="Ingresar Registro" />
    </div> 
    <script>
        
    </script>
</asp:Content>

