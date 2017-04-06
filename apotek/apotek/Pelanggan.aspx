<%@ Page Title="Pelanggan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pelanggan.aspx.cs" Inherits="apotek.Pelanggan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Data Pelanggan</h2>
    <asp:EntityDataSource ID="EntityDataSourcePelanggan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="pelanggans" OnContextCreating="EntityDataSourcePelanggan_ContextCreating"></asp:EntityDataSource>
    <asp:GridView ID="PelangganGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_pelanggan" DataSourceID="EntityDataSourcePelanggan" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" PageSize="5">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID Pelanggan" SortExpression="id_pelanggan">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_pelanggan") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_pelanggan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nama" SortExpression="nama">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Alamat" SortExpression="alamat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("alamat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("alamat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("jenis_kelamin") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("jenis_kelamin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
    <h2>Pencarian Pelanggan</h2>
    Masukan Nama Pelanggan : <asp:TextBox ID="CariTextBox" runat="server"></asp:TextBox>
    <asp:EntityDataSource ID="EntityDataSourceCari" runat="server" EnableFlattening="False" EntitySetName="pelanggans" ContextTypeName="apotek.DAL.apotek_dbEntities2" OnContextCreating="EntityDataSourceCari_ContextCreating" OrderBy="it.id_pelanggan"></asp:EntityDataSource>
    <asp:QueryExtender ID="QueryExtenderCari" runat="server" TargetControlID="EntityDataSourceCari">
        <asp:SearchExpression SearchType="StartsWith" DataFields="nama"> 
            <asp:ControlParameter ControlID="CariTextBox" /> 
        </asp:SearchExpression> 
        <asp:OrderByExpression DataField="nama" Direction="Ascending">
            <asp:ThenBy DataField="nama" Direction="Ascending" /> </asp:OrderByExpression>
    </asp:QueryExtender>
    <asp:GridView ID="GridViewCari" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_pelanggan" DataSourceID="EntityDataSourceCari" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="ID Pelanggan" SortExpression="id_pelanggan">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_pelanggan") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_pelanggan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nama" SortExpression="nama">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Alamat" SortExpression="alamat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("alamat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("alamat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("jenis_kelamin") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("jenis_kelamin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
