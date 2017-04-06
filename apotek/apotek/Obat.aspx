<%@ Page Title="Obat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Obat.aspx.cs" Inherits="apotek.Obat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Data Obat</h2>
    <asp:EntityDataSource ID="EntityDataSourceJenis" runat="server" EnableFlattening="False" EntitySetName="jenis" ContextTypeName="apotek.DAL.apotek_dbEntities2" OnContextCreating="EntityDataSourceJenis_ContextCreating"></asp:EntityDataSource>
    Pilih Jenis Obat : <asp:DropDownList ID="DropDownListJenis" runat="server" DataSourceID="EntityDataSourceJenis" DataTextField="id_jenis" DataValueField="id_jenis" AutoPostBack="True"></asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSourceObat" runat="server" AutoGenerateWhereClause="True" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="obats" OnContextCreating="EntityDataSourceObat_ContextCreating" Where="" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownListJenis" Name="id_jenis" PropertyName="SelectedValue" Type="String" />
        </WhereParameters>
    </asp:EntityDataSource>
    <asp:GridView ID="ObatGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_obat" DataSourceID="EntityDataSourceObat" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID Obat" SortExpression="id_obat">
                <EditItemTemplate>
                    <asp:Label ID="ObatTextBox" runat="server" Text='<%# Eval("id_obat") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ObatLabel" runat="server" Text='<%# Bind("id_obat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nama" SortExpression="nama">
                <EditItemTemplate>
                    <asp:TextBox ID="NamaTextBox" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="NamaLabel" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jenis" SortExpression="id_jenis">
                <EditItemTemplate>
                    <asp:TextBox ID="JenisTextBox" runat="server" Text='<%# Bind("id_jenis") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="JenisLabel" runat="server" Text='<%# Bind("id_jenis") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Harga" SortExpression="harga">
                <EditItemTemplate>
                    <asp:TextBox ID="HargaTextBox" runat="server" Text='<%# Bind("harga") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="HargaLabel" runat="server" Text='<%# Bind("harga") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID Supplier" SortExpression="id_supplier">
                <EditItemTemplate>
                    <asp:TextBox ID="SupplierTextBox" runat="server" Text='<%# Bind("id_supplier") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="SupplierLabel" runat="server" Text='<%# Bind("id_supplier") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
    <h2>Pencarian Obat</h2>
    Masukan Nama Obat : <asp:TextBox ID="CariTextBox" runat="server"></asp:TextBox>
    <asp:EntityDataSource ID="EntityDataSourceCari" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="obats" Include="jeni" OnContextCreating="EntityDataSourceCari_ContextCreating"></asp:EntityDataSource>
    <asp:QueryExtender ID="QueryExtenderCari" runat="server" TargetControlID="EntityDataSourceCari">
        <asp:SearchExpression SearchType="StartsWith" DataFields="nama"> 
            <asp:ControlParameter ControlID="CariTextBox" /> 
        </asp:SearchExpression> <asp:OrderByExpression DataField="Jeni.id_jenis" Direction="Ascending">
            <asp:ThenBy DataField="nama" Direction="Ascending" /> </asp:OrderByExpression>
    </asp:QueryExtender>
    <asp:GridView ID="GridViewCari" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_obat" DataSourceID="EntityDataSourceCari" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10">
        <Columns>
            <asp:TemplateField HeaderText="ID Obat" SortExpression="id_obat">
                <EditItemTemplate>
                    <asp:TextBox ID="ObatTextBox" runat="server" Text='<%# Eval("id_obat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ObatLabel" runat="server" Text='<%# Bind("id_obat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nama" SortExpression="nama">
                <EditItemTemplate>
                    <asp:TextBox ID="NamaTextBox" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="NamaLabel" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jenis" SortExpression="id_jenis">
                <EditItemTemplate>
                    <asp:TextBox ID="JenisTextBox" runat="server" Text='<%# Bind("id_jenis") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="JenisLabel" runat="server" Text='<%# Bind("id_jenis") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Harga" SortExpression="harga">
                <EditItemTemplate>
                    <asp:TextBox ID="HargaTextBox" runat="server" Text='<%# Bind("harga") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="HargaLabel" runat="server" Text='<%# Bind("harga") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID Supplier" SortExpression="id_supplier">
                <EditItemTemplate>
                    <asp:TextBox ID="SuplierTextBox" runat="server" Text='<%# Bind("id_supplier") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="SupplierLabel" runat="server" Text='<%# Bind("id_supplier") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
