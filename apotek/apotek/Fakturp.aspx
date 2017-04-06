<%@ Page Title="Faktur Penjualan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fakturp.aspx.cs" Inherits="apotek.Fakturp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Data Faktur Penjualan</h2>
    <div>
        <asp:EntityDataSource ID="EntityDataSourcePenjualan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="faktur_penjualan" OnContextCreating="EntityDataSource1_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2" Include="obat, pelanggan, karyawan"></asp:EntityDataSource>
        <asp:GridView ID="PenjualanGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSourcePenjualan" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10" OnRowUpdating="PenjualanGridView_RowUpdating" OnSelectedIndexChanged="PenjualanGridView_SelectedIndexChanged" PageSize="5">
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
                        <asp:TextBox ID="NamaObatTextBox" runat="server" Text='<%# Bind("obat.nama") %>'  OnInit="NamaObatTextBox_Init"></asp:TextBox>
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
                <asp:TemplateField HeaderText="Pelanggan" SortExpression="id_pelanggan">
                    <EditItemTemplate>
                        <asp:TextBox ID="NamaPelangganTextBox" runat="server" Text='<%# Bind("pelanggan.nama") %>'  OnInit="NamaPelangganTextBox_Init"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NamaPelangganLabel" runat="server" Text='<%# Bind("pelanggan.nama") %>' Width="15em"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Karyawan" SortExpression="id_karyawan">
                    <EditItemTemplate>
                        <asp:TextBox ID="NamaKaryawanTextBox" runat="server" Text='<%# Bind("karyawan.nama") %>'  OnInit="NamaKaryawanTextBox_Init"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NamaKaryawanLabel" runat="server" Text='<%# Bind("karyawan.nama") %>' Width="15em"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Bayar" SortExpression="total_bayar">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("total_bayar") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("total_bayar") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Jumlah Obat" SortExpression="jumlah_obat">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("jumlah_obat") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("jumlah_obat") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="#FF9933" />
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#33CCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        </asp:GridView>
        <asp:Label ID="ErrorMsgLabel" runat="server" Text="" Visible="false" ViewStateMode="Disabled"></asp:Label>
        <br />
        <h2>Detail Obat</h2>
        <asp:EntityDataSource ID="EntityDataSourceObat" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="obats" Where="@IdObat IN (SELECT VALUE apotik.id FROM it.faktur_penjualan AS apotik)" OnContextCreating="EntityDataSourceObat_ContextCreating" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="PenjualanGridView" Name="IdObat" PropertyName="SelectedValue" Type="Int32" /> 
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:GridView ID="GridViewObat" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_obat" DataSourceID="EntityDataSourceObat" SelectedRowStyle-BackColor="#FF9900" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="10">
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
        <h2>Detail Pelanggan</h2>
        <asp:EntityDataSource ID="EntityDataSourcePelanggan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="pelanggans" Where="@IdPelanggan IN (SELECT VALUE apotik.id FROM it.faktur_penjualan AS apotik)" OnContextCreating="EntityDataSourcePelanggan_ContextCreating" OnSelected="EntityDataSourcePelanggan_Selected" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="PenjualanGridView" Name="IdPelanggan" PropertyName="SelectedValue" Type="Int32" /> 
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:DetailsView ID="DetailsViewPelanggan" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id_pelanggan" DataSourceID="EntityDataSourcePelanggan">
            <EmptyDataTemplate> 
                <p>Tidak Ada Data Pelanggan.</p> 
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="id_pelanggan" HeaderText="ID Pelanggan" ReadOnly="True" SortExpression="id_pelanggan" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="nama" HeaderText="Nama" SortExpression="nama" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="jenis_kelamin" HeaderText="Jenis Kelamin" SortExpression="jenis_kelamin" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" HeaderStyle-Width="200px" HeaderStyle-Wrap="False" HeaderStyle-BorderWidth="1px" HeaderStyle-BorderColor="#CC6600" ItemStyle-BorderColor="#CC6600" ItemStyle-BorderWidth="1px" ItemStyle-Wrap="False" ItemStyle-Width="200px"/>
            </Fields>
        </asp:DetailsView>
        <h2>Detail Karyawan</h2>
        <asp:EntityDataSource ID="EntityDataSourceKaryawan" runat="server" ContextTypeName="apotek.DAL.apotek_dbEntities2" EnableFlattening="False" EntitySetName="karyawans" Where="@IdKaryawan IN (SELECT VALUE apotik.id FROM it.faktur_penjualan AS apotik)" OnContextCreating="EntityDataSourceKaryawan_ContextCreating" OnSelected="EntityDataSourceKaryawan_Selected" ConnectionString="name=apotek_dbEntities2" DefaultContainerName="apotek_dbEntities2">
            <WhereParameters> 
                <asp:ControlParameter ControlID="PenjualanGridView" Name="IdKaryawan" PropertyName="SelectedValue" Type="Int32" /> 
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id_karyawan" DataSourceID="EntityDataSourceKaryawan" BackColor="White">
            <EmptyDataTemplate> 
                <p>Tidak Ada Data Karyawan.</p> 
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
