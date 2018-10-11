<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RegistroSucuarsal.aspx.cs" Inherits="truespectsistema.RegistroSucuarsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Registro de Sucursal</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Sucursal</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="box-body">

                                <asp:DropDownList ID="ddlestados" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlestados_SelectedIndexChanged"></asp:DropDownList>
                                <br />
                                <asp:DropDownList ID="ddlciudades" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                                <br />
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nombre de Sucursal</label>
                                    <input type="text" class="form-control" runat="server" id="txtsucursal" placeholder="Ingrese el nombre de la sucursal">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    
    <div class="box-footer">
        <input class="btn btn-primary" type="submit" id="btninsertarusuario" runat="server" onserverclick="Submit_Click" value="Crear Registro" />
    </div>


</asp:Content>
