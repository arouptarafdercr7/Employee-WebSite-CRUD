using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //try use kora hoi jate input er somoy TextBox Blank validation declare kore
        try
        {
            //int x = Int32.Parse(txtId.Text);
            //var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();
            // OR
            var data = db.Employees.Where(d => d.Id.ToString() == txtId.Text).FirstOrDefault();


            if (data!=null)
            {
                txtName.Text = data.Name;
                txtSalary.Text = data.Salary.ToString();
            }

            Literal1.Text = "";
        }
        catch (Exception)
        {
            txtSalary.Text = "";
            txtName.Text = "";

            Literal1.Text = "Sorry Data Not Found...";

        }

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            int x = Int32.Parse(txtId.Text);
            var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();

            if (data != null)
            {
                data.Name = txtName.Text;
                data.Salary = decimal.Parse(txtSalary.Text);

                db.SaveChanges();

                Literal1.Text = "Data Successfully Updated";
            }
            else
            {
                txtSalary.Text = "";
                txtName.Text = "";

                Literal1.Text = "Sorry Data Not Updated...";
            }

        }
        catch (Exception ex1)
        {
            Literal1.Text = ex1.Message;

        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            var data = db.Employees.Where(d => d.Id.ToString() == txtId.Text).FirstOrDefault();

            if (data != null)
            {
                db.Employees.Remove(data);
                db.SaveChanges();

                txtSalary.Text = "";
                txtName.Text = "";

                Literal1.Text = "Data Successfully Deleted";
            }
            else
            {
                txtSalary.Text = "";
                txtName.Text = "";

                Literal1.Text = "Sorry Data Not Deleted...";
            }

        }
        catch (Exception ex1)
        {
            Literal1.Text = ex1.Message;

        }
    }
}