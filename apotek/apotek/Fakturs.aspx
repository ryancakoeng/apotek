<%@ Page Title="Faktur Supply" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fakturs.aspx.cs" Inherits="apotek.Fakturs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
        <h2>Data Faktur Supply</h2>
        <asp:EntityDataSource ID="EntityDataSourceSupply" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="faktur_supply" Include="obat, supplier, karyawan" OnContextCreating="EntityDataSourceSupply_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2"></asp:EntityDataSource>
        <asp:GridView ID="SupplyGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSourceSupply" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" OnRowUpdating="SupplyGridView_RowUpdating" OnSelectedIndexChanged="SupplyGridView_SelectedIndexChanged" PageSize="5" OnRowDeleting="SupplyGridView_RowDeleting">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <%--<asp:TemplateField HeaderText="id" SortExpression="id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="No Faktur" SortExpression="no_faktur">
                    <EditItemTemplate>
                        <asp:TextBox ID="FakturTextBox" runat="server" Text='<%# Bind("no_faktur") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="FakturLabel" runat="server" Text='<%# Bind("no_faktur") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Obat" SortExpression="id_obat">
                    <EditItemTemplate>
                        <asp:TextBox ID="NamaObatTextBox" runat="server" Text='<%# Bind("obat.nama") %>' OnInit="NamaObatTextBox_Init"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NamaObatLabel" runat="server" Text='<%# Bind("obat.nama") %>' Width="15em"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tanggal" SortExpression="tanggal">
                    <EditItemTemplate>
                        <asp:TextBox ID="TanggalTextBox" runat="server" Text='<%# Bind("tanggal") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="TanggalLabel" runat="server" Text='<%# Bind("tanggal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Supplier" SortExpression="id_supplier">
                    <EditItemTemplate>
                        <asp:TextBox ID="NamaSupplierTextBox" runat="server" Text='<%# Bind("supplier.nama") %>' OnInit="NamaSupplierTextBox_Init"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NamaSupplierLabel" runat="server" Text='<%# Bind("supplier.nama") %>' Width="15em"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Karyawan" SortExpression="id_karyawan">
                    <EditItemTemplate>
                        <asp:TextBox ID="NamaKaryawanTextBox" runat="server" Text='<%# Bind("karyawan.nama") %>' OnInit="NamaKaryawanTextBox_Init"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NamaKaryawanLabel" runat="server" Text='<%# Bind("karyawan.nama") %>' Width="15em"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Bayar" SortExpression="total_bayar">
                    <EditItemTemplate>
                        <asp:TextBox ID="BayarTextBox" runat="server" Text='<%# Bind("total_bayar") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="BayarLabel" runat="server" Text='<%# Bind("total_bayar") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Jumlah Obat" SortExpression="jumlah_obat">
                    <EditItemTemplate>
                        <asp:TextBox ID="JumlahTextBox" runat="server" Text='<%# Bind("jumlah_obat") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="JumlahLabel" runat="server" Text='<%# Bind("jumlah_obat") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="#FF9933" />
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </asp:GridView>
        <asp:Label ID="ErrorMsgLabel" runat="server" Text="" Visible="false" ViewStateMode="Disabled"></asp:Label>
    </div>
    <div>
        <h2>Detail Obat</h2>
        <asp:EntityDataSource ID="EntityDataSourceObat" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" Where="@IdObat IN (SELECT VALUE apotik.id FROM it.faktur_supply AS apotik)" EnableFlattening="False" EntitySetName="obats" OnContextCreating="EntityDataSourceObat_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="SupplyGridView" Name="IdObat" PropertyName="SelectedValue" Type="Int32" /> 
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" DataKeyNames="id_obat" DataSourceID="EntityDataSourceObat" PageSize="5">
            <EmptyDataTemplate>
                <p>Tidak Ada Obat</p>
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="id_obat" HeaderText="ID Obat" ReadOnly="True" SortExpression="id_obat" />
                <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" />
                <asp:BoundField DataField="id_jenis" HeaderText="ID Jenis" SortExpression="id_jenis" />
                <asp:BoundField DataField="harga" HeaderText="Harga" SortExpression="harga" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="id_supplier" HeaderText="ID Supplier" SortExpression="id_supplier" />
            </Columns>
            <SelectedRowStyle BackColor="#FF9900"></SelectedRowStyle>        
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </asp:GridView>
    </div>
    <div>
        <h2>Detail Supplier</h2>
        <asp:EntityDataSource ID="EntityDataSourceSupplier" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="suppliers" OnContextCreating="EntityDataSourceSupplier_ContextCreating" Where="@IdSupplier IN (SELECT VALUE apotik.id FROM it.faktur_supply AS apotik)" OnSelected="EntityDataSourceSupplier_Selected" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="SupplyGridView" Name="IdSupplier" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:DetailsView ID="DetailsViewSupplier" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id_supplier" DataSourceID="EntityDataSourceSupplier">
            <EmptyDataTemplate> 
                <p>Tidak ada data supplier.</p>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="id_supplier" HeaderText="ID Supplier" ReadOnly="True" SortExpression="id_supplier" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="telp" HeaderText="Telp" SortExpression="telp" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
            </Fields>
        </asp:DetailsView>
        <h2>Detail Karyawan</h2>
        <asp:EntityDataSource ID="EntityDataSourceKaryawan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="karyawans" OnContextCreating="EntityDataSourceKaryawan_ContextCreating" Where="@IdKaryawan IN (SELECT VALUE apotik.id FROM it.faktur_supply AS apotik)" OnSelected="EntityDataSourceKaryawan_Selected" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="SupplyGridView" Name="IdKaryawan" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id_karyawan" DataSourceID="EntityDataSourceKaryawan">
            <EmptyDataTemplate> 
                <p>Tidak ada data karyawan.</p>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="id_karyawan" HeaderText="ID Karyawan" ReadOnly="True" SortExpression="id_karyawan" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="telp" HeaderText="Telp" SortExpression="telp" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <%--<asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />--%>
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
