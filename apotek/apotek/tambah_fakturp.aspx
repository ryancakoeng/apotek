<%@ Page Title="Input Faktur Penjualan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tambah_fakturp.aspx.cs" Inherits="apotek.tambah_fakturp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>
        Tambah Faktur Penjualan
    </h2>
    <asp:EntityDataSource ID="EntityDataSourcePenjualan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EnableInsert="True" EntitySetName="faktur_penjualan" OnContextCreating="EntityDataSourcePenjualan_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2"></asp:EntityDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="532px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="EntityDataSourcePenjualan" DefaultMode="Insert" GridLines="None" OnItemInserting="DetailsView1_ItemInserting">
        <Fields>
            <%--<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />--%>
            <asp:BoundField DataField="no_faktur" HeaderText="No Faktur" SortExpression="no_faktur" />

            <asp:TemplateField HeaderText="Obat" SortExpression="id_obat">
                <InsertItemTemplate>
                    <asp:EntityDataSource ID="EntityDataSourceObat" runat="server" EnableFlattening="False" EnableDelete="True" EntitySetName="obats" ConnectionString="apotek.DAL.apotek_dbEntities2" OnContextCreating="EntityDataSourceObat_ContextCreating"></asp:EntityDataSource>
                    <asp:DropDownList ID="DropDownListObat" runat="server" DataSourceID="EntityDataSourceObat" DataTextField="id_obat" DataValueField="id_obat" OnInit="DropDownListObat_Init"></asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="tanggal" HeaderText="Tanggal" SortExpression="tanggal" />

            <asp:TemplateField HeaderText="Pelanggan" SortExpression="id_pelanggan">
                <InsertItemTemplate>
                    <asp:EntityDataSource ID="EntityDataSourcePelanggan" runat="server" EnableFlattening="False" EnableDelete="True" EntitySetName="pelanggans" ConnectionString="apotek.DAL.apotek_dbEntities2" OnContextCreating="EntityDataSourcePelanggan_ContextCreating"></asp:EntityDataSource>
                    <asp:DropDownList ID="DropDownListPelanggan" runat="server" DataSourceID="EntityDataSourcePelanggan" DataTextField="id_pelanggan" DataValueField="id_pelanggan" OnInit="DropDownListPelanggan_Init"></asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Karyawan" SortExpression="id_karyawan">
                <InsertItemTemplate>
                    <asp:EntityDataSource ID="EntityDataSourceKaryawan" runat="server" EnableFlattening="False" EnableDelete="True" EntitySetName="karyawans" ConnectionString="apotek.DAL.apotek_dbEntities2" OnContextCreating="EntityDataSourceKaryawan_ContextCreating"></asp:EntityDataSource>
                    <asp:DropDownList ID="DropDownListKaryawan" runat="server" DataSourceID="EntityDataSourceKaryawan" DataTextField="id_karyawan" DataValueField="id_karyawan" OnInit="DropDownListKaryawan_Init"></asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="total_bayar" HeaderText="Total Bayar" SortExpression="total_bayar" />
            <asp:BoundField DataField="jumlah_obat" HeaderText="Jumlah Obat" SortExpression="jumlah_obat" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
