using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterUser : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        UserInfo unfo = new UserInfo();

        unfo.UserName = txtUserName.Text;
        unfo.Password = txtPassword.Text;
        unfo.Email = txtEmail.Text;
        unfo.Role = "User";

        db.UserInfoes.Add(unfo);
        db.SaveChanges();

        Literal1.Text = "Thanks ! Complete Your Registration";
    }
}