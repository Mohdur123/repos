using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace UseCaseAntipatternDetection
{
    public partial class Default : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            cmd = new SqlCommand();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
        }

        protected void button_login_click(Object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "SELECT * FROM Admin WHERE username=@username AND password=@pass";
            cmd.Parameters.AddWithValue("@username", textbox_username.Text);
            cmd.Parameters.AddWithValue("@pass", textbox_password.Text);
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Session["AdminId"] = reader[0].ToString();
                reader.Close();
                Response.Redirect("Admin.aspx");
            }
            else
            {
                reader.Close();
                cmd.CommandText = "SELECT * FROM Lecturerers WHERE username=@usernameLec AND password=@passLec";
                cmd.Parameters.AddWithValue("@usernameLec", textbox_username.Text);
                cmd.Parameters.AddWithValue("@passLec", textbox_password.Text);
                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Session["LecturerersID"] = reader[0].ToString();
                    reader.Close();
                    Response.Redirect("Lecture.aspx");
                }
                else {
                    reader.Close();
                    cmd.Parameters.AddWithValue("@usernameStu", textbox_username.Text);
                    cmd.Parameters.AddWithValue("@passStu", textbox_password.Text);
                    cmd.CommandText = "SELECT * FROM Students WHERE username=@usernameStu AND password=@passStu";
                   
                    reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        Session["StudentsID"] = reader[0].ToString();
                        reader.Close();
                        Response.Redirect("Student.aspx");
                    }
                    else {
                        reader.Close();

                        label_message.Text = "Wrong in UserName or Password please check it!";
                    }
                }
            }
            con.Close();

        }

    }
}