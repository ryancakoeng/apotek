<%@ Page Title="Input Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tambah_supplier.aspx.cs" Inherits="apotek.tambah_supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Input Data Supplier</h2>
    <asp:EntityDataSource ID="EntityDataSourceSupplier" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EnableInsert="True" EntitySetName="suppliers" OnContextCreating="EntityDataSourceSupplier_ContextCreating"></asp:EntityDataSource>
    <asp:DetailsView ID="DetailsViewSupplier" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id_supplier" DataSourceID="EntityDataSourceSupplier" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="id_supplier" HeaderText="ID_Supplier" ReadOnly="True" SortExpression="id_supplier" />
            <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
            <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" />
            <asp:BoundField DataField="telp" HeaderText="Telp" SortExpression="telp" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
