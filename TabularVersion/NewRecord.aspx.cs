using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace EmployeeDirectory.TabularVersion
{
    public partial class NewRecord : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            //clear the entry lbl
            errorLbl0.Text = "";
            FNameerrLbl.Text = "";
            LNameerrLbl.Text = "";

            //form validation check for First and Last Name
            if (saveFNameTB.Text == "")
            {
                FNameerrLbl.Text = "Please enter First Name";
            }
            if (saveLNameTB.Text == "")
            {
                LNameerrLbl.Text = "Please enter Last Name";
            }

            //if form validation is good then, run the save command
            if (FNameerrLbl.Text == "" && LNameerrLbl.Text == "")
            {
            //my model class
                using (WebApplicationsEntities context = new WebApplicationsEntities())
                {
                    try
                    {
                        //create new employee base container
                        My_Employee_Directory empsdata = new My_Employee_Directory();
                        //fill the base container with data
                        empsdata.FName = saveFNameTB.Text;
                        empsdata.LName = saveLNameTB.Text;
                        empsdata.JobTitle = saveJobTitleTB.Text;
                        empsdata.OfficePhone = saveOfficePhoneTB.Text;
                        empsdata.MobilePhone = saveCellPhoneTB.Text;
                        empsdata.Email = saveEmailTB.Text;
                        empsdata.Location = saveLocTB.Text;
                        //Adds an entity in a pending insert state to this System.Data.Linq.Table<TEntity>and parameter is the entity which to be added
                        context.My_Employee_Directory.AddObject(empsdata);
                        // executes the appropriate commands to implement the changes to the database
                        context.SaveChanges();
                    }
                    catch (Exception error)
                    {
                        errorLbl0.Text = error.Message;
                    }
                    if (errorLbl0.Text == "")
                    {
                        errorLbl0.Text = "Entry added successfully!";
                    }
                }
            }
            else
            {
                errorLbl0.Text = "";
            }
        }
    }
}