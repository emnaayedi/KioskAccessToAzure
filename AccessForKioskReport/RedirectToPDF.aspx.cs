using System;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        public string URL { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            URL = Request.QueryString["file"].ToString();

        }

    }
}