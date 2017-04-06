<%@ Page Title="Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="apotek.Supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Data Supplier</h2>
    <asp:EntityDataSource ID="EntityDataSourceSupplier" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="suppliers" OnContextCreating="EntityDataSourceSupplier_ContextCreating"></asp:EntityDataSource>
    <asp:GridView ID="SupplierGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_supplier" DataSourceID="EntityDataSourceSupplier" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ID Supplier" SortExpression="id_supplier">
                <EditItemTemplate>
                    <asp:TextBox ID="SupplierTextBox" runat="server" Text='<%# Eval("id_supplier") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="SupplierLabel" runat="server" Text='<%# Bind("id_supplier") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Alamat" SortExpression="alamat">
                <EditItemTemplate>
                    <asp:TextBox ID="AlamatTextBox" runat="server" Text='<%# Bind("alamat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AlamatLabel" runat="server" Text='<%# Bind("alamat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telp" SortExpression="telp">
                <EditItemTemplate>
                    <asp:TextBox ID="TelpTextBox" runat="server" Text='<%# Bind("telp") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="TelpLabel" runat="server" Text='<%# Bind("telp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
    <h2>Pencarian Supplier</h2>
    Masukan Nama Supplier : <asp:TextBox ID="CariTextBox" runat="server"></asp:TextBox>
    <asp:EntityDataSource ID="EntityDataSourceCari" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="suppliers" OnContextCreating="EntityDataSourceCari_ContextCreating"></asp:EntityDataSource>
    <asp:QueryExtender ID="QueryExtenderCari" runat="server" TargetControlID="EntityDataSourceCari">
        <asp:SearchExpression SearchType="StartsWith" DataFields="nama"> 
            <asp:ControlParameter ControlID="CariTextBox" /> 
        </asp:SearchExpression> 
        <asp:OrderByExpression DataField="id_supplier" Direction="Ascending">
            <asp:ThenBy DataField="nama" Direction="Ascending" /> 
        </asp:OrderByExpression>
    </asp:QueryExtender>
    <asp:GridView ID="GridViewCari" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_supplier" DataSourceID="EntityDataSourceCari" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="ID Supplier" SortExpression="id_supplier">
                <EditItemTemplate>
                    <asp:TextBox ID="SupplierTextBox" runat="server" Text='<%# Eval("id_supplier") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="SupplierLabel" runat="server" Text='<%# Bind("id_supplier") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Alamat" SortExpression="alamat">
                <EditItemTemplate>
                    <asp:TextBox ID="AlamatTextBox" runat="server" Text='<%# Bind("alamat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AlamatLabel" runat="server" Text='<%# Bind("alamat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telp" SortExpression="telp">
                <EditItemTemplate>
                    <asp:TextBox ID="TelpTextBox" runat="server" Text='<%# Bind("telp") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="TelpLabel" runat="server" Text='<%# Bind("telp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
