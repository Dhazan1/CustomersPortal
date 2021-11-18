using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomersPortal
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["wemadatabase"].ToString();
            using (var w = new SqlConnection(connString)) //implementing idisposable
            {
                w.Open();
                
                var sql = "delete from Customers where AccountNumber=@Accountnumber";
                var myCommand = new SqlCommand(sql, w); //alternative to the next line
                                                        //  myCommand.Parameters.Add(new SqlParameter("@title", title.Text)); //using parameters

                myCommand.Parameters.AddWithValue("@Accountnumber", delete.Text);



                int numOfAffectedRows = myCommand.ExecuteNonQuery();
                if (numOfAffectedRows > 0)
                {
                     lbDelete.Text = numOfAffectedRows.ToString() + "You have successfully made your correction";
                }
            }

        }
        }
    }
    