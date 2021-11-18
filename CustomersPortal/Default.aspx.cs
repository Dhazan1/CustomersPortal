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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sender_Click(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["wemadatabase"].ToString();
            using (var w = new SqlConnection(connString)) //implementing idisposable
            {
                w.Open();
                var sql = "insert into customer(firstname,lastname,AccountNumber,BVN, modifieddate) values( @firstname, @lastname,@AccountNumber,@BVN, @modifieddate)";
                var myCommand = new SqlCommand(sql, w); //alternative to the next line
                                                        //  myCommand.Parameters.Add(new SqlParameter("@title", title.Text)); //using parameters

                myCommand.Parameters.AddWithValue("@Firstname", FirstName.Text);
                myCommand.Parameters.AddWithValue("@Lastname", LastName.Text);
                myCommand.Parameters.AddWithValue("@AccountNumber", AccountNumber.Text);
                myCommand.Parameters.AddWithValue("@BVN", BVN.Text);
                myCommand.Parameters.AddWithValue("@Modifieddate", DateTime.Now);


                int numOfAffectedRows = myCommand.ExecuteNonQuery();
                if (numOfAffectedRows > 0)
                {
                    lbResult.Text = numOfAffectedRows.ToString() + "You have been registered successfully";
                }
            }


        }
    }

}