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
    public partial class tambah_fakturp : System.Web.UI.Page
    {
        private DropDownList DropDownListObat;
        private DropDownList DropDownListPelanggan;
        private DropDownList DropDownListKaryawan;

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"] as string;

            if (String.IsNullOrEmpty(username))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void EntityDataSourcePenjualan_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourceObat_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourceKaryawan_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourcePelanggan_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void DropDownListObat_Init(object sender, EventArgs e)
        {
            DropDownListObat = sender as DropDownList;
        }

        protected void DropDownListPelanggan_Init(object sender, EventArgs e)
        {
            DropDownListPelanggan = sender as DropDownList;
        }

        protected void DropDownListKaryawan_Init(object sender, EventArgs e)
        {
            DropDownListKaryawan = sender as DropDownList;
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            var IdObat = Convert.ToString(DropDownListObat.SelectedValue);
            e.Values["id_obat"] = IdObat;

            var IdPelanggan = Convert.ToString(DropDownListPelanggan.SelectedValue);
            e.Values["id_pelanggan"] = IdPelanggan;

            var IdKaryawan = Convert.ToString(DropDownListKaryawan.SelectedValue);
            e.Values["id_karyawan"] = IdKaryawan;
        }
    }
}