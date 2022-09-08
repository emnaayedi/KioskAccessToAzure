using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KioskAccessToAzure
{
    public partial class RegistraionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        { 

            if (TextBox3.Text == "Aquila2020#")
            {
                Server.Transfer("RedirectToPDF.aspx");

            }

        }
    }
}