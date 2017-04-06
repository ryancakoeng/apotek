using apotek.DAL;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apotek
{
    public partial class Fakturp : System.Web.UI.Page
    {
        private TextBox NamaObatTextBox;
        private TextBox NamaPelangganTextBox;
        private TextBox NamaKaryawanTextBox;

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"] as string;

            if (String.IsNullOrEmpty(username))
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void EntityDataSource1_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void PenjualanGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void NamaObatTextBox_Init(object sender, EventArgs e) 
        { 
            NamaObatTextBox = sender as TextBox; 
        }

        protected void NamaPelangganTextBox_Init(object sender, EventArgs e)
        {
            NamaPelangganTextBox = sender as TextBox;
        }

        protected void NamaKaryawanTextBox_Init(object sender, EventArgs e)
        {
            NamaKaryawanTextBox = sender as TextBox;
        }

        protected void PenjualanGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (var context = new apotek_dbEntities2()) 
            { 
                var idBeingUpdated = Convert.ToInt32(e.Keys[0]); 
                var NamaObat2 = (from o in context.faktur_penjualan where o.id == idBeingUpdated select o).FirstOrDefault();
                try 
                { 
                    //MENGUBAH FIELD Nama Obat 
                    if (String.IsNullOrWhiteSpace(NamaObatTextBox.Text) == false) 
                    { 
                        if (NamaObat2 == null) 
                        { 
                            context.obats.Add(new obat { id_obat = NamaObat2.id_obat, nama = NamaObatTextBox.Text, id_jenis = null, harga = null, status = null, id_supplier = null });
                        } 
                        else
                        {
                            var NamaObat3 = (from n in context.obats where n.id_obat == NamaObat2.id_obat select n).FirstOrDefault(); 
                            NamaObat3.nama = NamaObatTextBox.Text;
                        }
                    } 
                    else 
                    { 
                        if (NamaObat2 != null) 
                        { 
                            context.faktur_penjualan.Remove(NamaObat2); 
                        } 
                    }
                context.SaveChanges();
                } 
                catch (Exception)
                {
                    e.Cancel = true;
                    ErrorMsgLabel.Visible = true;
                    ErrorMsgLabel.Text = "Update failed."; //Add code to log the error. 
                }

                var NamaPelanggan2 = (from o in context.faktur_penjualan where o.id == idBeingUpdated select o).FirstOrDefault();
                try
                {
                    //MENGUBAH FIELD Nama Pelanggan 
                    if (String.IsNullOrWhiteSpace(NamaPelangganTextBox.Text) == false)
                    {
                        if (NamaPelanggan2 == null)
                        {
                            context.pelanggans.Add(new pelanggan { id_pelanggan = NamaPelanggan2.id_pelanggan, nama = NamaPelangganTextBox.Text, alamat = null, jenis_kelamin = null, status = null });
                        }
                        else
                        {
                            var NamaPelanggan3 = (from n in context.pelanggans where n.id_pelanggan == NamaPelanggan2.id_pelanggan select n).FirstOrDefault();
                            NamaPelanggan3.nama = NamaPelangganTextBox.Text;
                        }
                    }
                    else
                    {
                        if (NamaPelanggan2 != null)
                        {
                            context.faktur_penjualan.Remove(NamaPelanggan2);
                        }
                    }
                    context.SaveChanges();
                }
                catch (Exception)
                {
                    e.Cancel = true;
                    ErrorMsgLabel.Visible = true;
                    ErrorMsgLabel.Text = "Update failed."; //Add code to log the error. 
                }

                var NamaKaryawan2 = (from o in context.faktur_penjualan where o.id == idBeingUpdated select o).FirstOrDefault();
                try
                {
                    //MENGUBAH FIELD Nama Karyawan 
                    if (String.IsNullOrWhiteSpace(NamaKaryawanTextBox.Text) == false)
                    {
                        if (NamaKaryawan2 == null)
                        {
                            context.karyawans.Add(new karyawan { id_karyawan = NamaKaryawan2.id_karyawan, nama = NamaKaryawanTextBox.Text, alamat = null, telp = null, username = null, password = null });
                        }
                        else
                        {
                            var NamaKaryawan3 = (from n in context.karyawans where n.id_karyawan == NamaKaryawan2.id_karyawan select n).FirstOrDefault();
                            NamaKaryawan3.nama = NamaKaryawanTextBox.Text;
                        }
                    }
                    else
                    {
                        if (NamaKaryawan2 != null)
                        {
                            context.faktur_penjualan.Remove(NamaKaryawan2);
                        }
                    }
                    context.SaveChanges();
                }
                catch (Exception)
                {
                    e.Cancel = true;
                    ErrorMsgLabel.Visible = true;
                    ErrorMsgLabel.Text = "Update failed."; //Add code to log the error. 
                }
            }
        }

        protected void EntityDataSourceObat_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourcePelanggan_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourcePelanggan_Selected(object sender, EntityDataSourceSelectedEventArgs e)
        {

        }

        protected void EntityDataSourceKaryawan_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourceKaryawan_Selected(object sender, EntityDataSourceSelectedEventArgs e)
        {

        }

    }
}