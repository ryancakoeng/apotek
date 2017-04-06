<%@ Page Title="Karyawan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Karyawan.aspx.cs" Inherits="apotek.Karyawan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2><span> Karyawan </span></h2>
    <asp:EntityDataSource ID="EntityDataSourceKaryawan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="karyawans" OnContextCreating="EntityDataSourceKaryawan_ContextCreating" EnableDelete="True" EnableUpdate="True"></asp:EntityDataSource>
    <asp:GridView ID="KaryawanGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id_karyawan" DataSourceID="EntityDataSourceKaryawan" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" PageSize="5" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="id_karyawan" SortExpression="id_karyawan">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_karyawan") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_karyawan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="nama" SortExpression="nama">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="alamat" SortExpression="alamat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("alamat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("alamat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="telp" SortExpression="telp">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("telp") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("telp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
<%--            <asp:TemplateField HeaderText="username" SortExpression="username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="password" SortExpression="password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
    <h2>Pencarian Karyawan</h2>
    Masukan Nama Karyawan : <asp:TextBox ID="CariTextBox" runat="server"></asp:TextBox>
    <asp:EntityDataSource ID="EntityDataSourceCari" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="karyawans" OnContextCreating="EntityDataSourceCari_ContextCreating" ></asp:EntityDataSource>
    <asp:QueryExtender ID="QueryExtenderCari" runat="server" TargetControlID="EntityDataSourceCari">
        <asp:SearchExpression SearchType="StartsWith" DataFields="nama"> 
            <asp:ControlParameter ControlID="CariTextBox" /> 
        </asp:SearchExpression> 
        <asp:OrderByExpression DataField="nama" Direction="Ascending">
            <asp:ThenBy DataField="nama" Direction="Ascending" /> </asp:OrderByExpression>
    </asp:QueryExtender>
    <asp:GridView ID="GridViewCari" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_karyawan" DataSourceID="EntityDataSourceCari" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="ID Karyawan" SortExpression="id_karyawan">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_karyawan") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_karyawan") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Telp" SortExpression="telp">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("telp") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("telp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="username" SortExpression="username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="password" SortExpression="password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
