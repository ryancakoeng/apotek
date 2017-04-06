<%@ Page Title="Input Obat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tambah_obat.aspx.cs" Inherits="apotek.tambah_obat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Input Data Obat</h2>
    <asp:EntityDataSource ID="EntityDataSourceObat" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EnableInsert="True" EntitySetName="obats" OnContextCreating="EntityDataSourceObat_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2"></asp:EntityDataSource>
    <asp:DetailsView ID="DetailsViewObat" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id_obat" DataSourceID="EntityDataSourceObat" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="id_obat" HeaderText="ID_Obat" ReadOnly="True" SortExpression="id_obat" />
            <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
            <asp:BoundField DataField="id_jenis" HeaderText="Jenis" SortExpression="id_jenis" />
            <asp:BoundField DataField="harga" HeaderText="Harga" SortExpression="harga" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="id_supplier" HeaderText="ID_Supplier" SortExpression="id_supplier" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
