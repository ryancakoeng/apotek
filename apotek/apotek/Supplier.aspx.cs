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
    public partial class Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"] as string;

            if (String.IsNullOrEmpty(username))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void EntityDataSourceSupplier_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void EntityDataSourceCari_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            var db = new apotek_dbEntities2();
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }
    }
}