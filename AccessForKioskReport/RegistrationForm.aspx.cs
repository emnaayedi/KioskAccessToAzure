using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccessForKioskReport
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        public string filename;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox3.Text == "Aquila2020#")
            {
                string fileName = Request.QueryString["pdf"].ToString();
                Server.Transfer("RedirectToPDF.aspx?fileName="+fileName+"&password="+ TextBox3.Text, true);

            }

        }
    }
}