<%@ Page Title="Input Pelanggan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tambah_pelanggan.aspx.cs" Inherits="apotek.tambah_pelanggan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Input Data Pelanggan</h2>
    <asp:EntityDataSource ID="EntityDataSourcePelanggan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EnableInsert="True" EntitySetName="pelanggans" OnContextCreating="EntityDataSourcePelanggan_ContextCreating"></asp:EntityDataSource>
    <asp:DetailsView ID="DetailsViewPelanggan" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id_pelanggan" DataSourceID="EntityDataSourcePelanggan" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="id_pelanggan" HeaderText="ID_Pelanggan" ReadOnly="True" SortExpression="id_pelanggan" />
            <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
            <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" />
            <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis_Kelamin" SortExpression="jenis_kelamin" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
