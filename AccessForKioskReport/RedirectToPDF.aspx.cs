using System;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        public string URL { get; set; }
        public string RETURN { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        { var r = Session["pwd"];
            if (r.ToString() != "Aquila")
            {
                RETURN = "ture";
            }
            else
            {
                RETURN = "false";
            }
            URL = Request.QueryString["pdf"].ToString();
        
        }

    }
}