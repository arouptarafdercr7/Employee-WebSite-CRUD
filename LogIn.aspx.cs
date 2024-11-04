using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        var data = db.UserInfoes.Where(d => d.Email == txtEmail.Text && d.Password == txtPassword.Text).FirstOrDefault();

        if (data != null)
        {
            Response.Redirect("Default2.aspx");
        }
        else
        {
            Literal1.Text = "Invalid User !!!";
        }
    }
}