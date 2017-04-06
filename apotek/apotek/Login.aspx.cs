using apotek.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apotek
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            apotek_dbEntities2 db = new apotek_dbEntities2();
            String username = UserName.Text;
            String password = Password.Text;
            string query = (from u in db.karyawans
                            where u.username == username && u.password == password
                            select u.username).FirstOrDefault();
            if (query != null)
            {
                this.Session["username"] = username;
                Response.Redirect("Default.aspx");
            }
            else
                Response.Write("Password atau Username salah !");
        }
    }
}