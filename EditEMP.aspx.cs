using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditEMP : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["p"] != null)
        {
            if (!IsPostBack)
            {
                //string idn = Request.QueryString["p"];
                string idn = Request.QueryString["p"].ToString();
                int x = Int32.Parse(idn);
                var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();

                if (data!=null)
                {
                    txtId.Text = data.Id.ToString();
                    txtName.Text = data.Name;
                    //txtSalary.Text = data.Salary.ToString();
                    txtSalary.Text = decimal.Parse(data.Salary.ToString()).ToString(".00");
                }
            }

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //try use kora hoi jate input er somoy TextBox Blank validation declare kore
        try
        {
            int x = Int32.Parse(txtId.Text);
            var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();

            if (data != null)
            {
                data.Name = txtName.Text;
                data.Salary = decimal.Parse(txtSalary.Text);

                db.SaveChanges();

            }

            Response.Redirect("Default.aspx");

        }
        catch (Exception ex1)
        {
            Literal1.Text = "Error:" + ex1.Message;

        }
    }
}