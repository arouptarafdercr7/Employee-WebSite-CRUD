using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        var data = db.Employees.ToList();

        GridView1.DataSource = data;
        GridView1.DataBind(); //Get data
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        //try use kora hoi jate input er somoy TextBox Blank validation declare kore
        try
        {
            Employee emp = new Employee();

            //emp.Id = Int32.Parse(txtId.Text);
            emp.Name = txtName.Text;
            emp.Salary = decimal.Parse(txtSalary.Text);

            db.Employees.Add(emp);
            db.SaveChanges();

            Literal1.Text = "Successfully Inserted....";

            var data = db.Employees.ToList();

            GridView1.DataSource = data;
            GridView1.DataBind(); //Get data
        }
        catch (Exception ex1)
        {
            //Response.Redirect("Default3.aspx");

            Literal1.Text = "Error: " + ex1.Message;
        }
    }
}