using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UseCaseAntipatternDetection
{
    public partial class Lecturerers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LecturerersID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

        }
    }
}