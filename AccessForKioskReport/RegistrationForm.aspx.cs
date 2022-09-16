using Azure.Storage;
using System;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace AccessForKioskReport
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        public string FILE_NAME { get; set; }
        public string URL { get; set; }
        public string TOKEN { get; set; }
        public string LOCAL_FILE_PATH { get; set; }
        public string DIRECTORY { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            DIRECTORY = Server.MapPath("~/reports");
            if (Directory.Exists(DIRECTORY))
            {
                foreach (string filename in Directory.GetFiles(DIRECTORY))
                {
                    File.Delete(filename);
                }
                // Check all child Directories and delete files  
                foreach (string subfolder in Directory.GetDirectories(DIRECTORY))
                {
                    Directory.Delete(subfolder);
                }
                Directory.Delete(DIRECTORY);
            }
        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox3.Text == "Aquila2020#")
            {
                FILE_NAME = Request.QueryString["pdf"].ToString();

                Azure.Storage.Sas.BlobSasBuilder blobSasBuilder = new Azure.Storage.Sas.BlobSasBuilder()
                {
                    BlobContainerName = "soaktestreports",
                    BlobName = FILE_NAME,
                    ExpiresOn = DateTime.UtcNow.AddMinutes(1),//Let SAS token expire after 1 minute.
                };
                blobSasBuilder.SetPermissions(Azure.Storage.Sas.BlobSasPermissions.Read);//User will only be able to read the blob and it's properties
                TOKEN = blobSasBuilder.ToSasQueryParameters(new StorageSharedKeyCredential("pdfreportsaquila", "QC+mUrcvLW8Mxajn4BgAbXijRIsE9Sg/dG/lM/yKlWEA22vwAH4w6cY2pBcqyugIzSkEbb8WrQlL+AStjuxszA==")).ToString();
                URL = "https://pdfreportsaquila.blob.core.windows.net/soaktestreports/" + FILE_NAME + "?" + TOKEN;
                using (var reader = new PdfReader(URL))
                {
                    if (!(Directory.Exists(DIRECTORY)))
                    {
                        Directory.CreateDirectory(DIRECTORY);
                    }
                        LOCAL_FILE_PATH = Server.MapPath("~/reports/" + FILE_NAME);

                    using (var fileStream = new FileStream(LOCAL_FILE_PATH, FileMode.Create, FileAccess.Write))
                    { 
                        var document = new Document(reader.GetPageSizeWithRotation(1));
                        var writer = PdfWriter.GetInstance(document, fileStream);

                        document.Open();

                        for (var i = 1; i <= reader.NumberOfPages; i++)
                        {
                            document.NewPage();
                            var baseFont = BaseFont.CreateFont(BaseFont.HELVETICA_BOLD, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
                            var importedPage = writer.GetImportedPage(reader, i);
                            var contentByte = writer.DirectContent;
                            contentByte.BeginText();
                            contentByte.EndText();
                            contentByte.AddTemplate(importedPage, 0, 0);
                        }
                        document.Close();
                        writer.Close();
                        Response.Clear();
                        Response.ContentType = "application/pdf";
                        Session["pwd"] = "Aquila";
                        Response.Redirect("RedirectToPDF.aspx?pdf="+ FILE_NAME); 
                    }

                    }

                }
        }
    }
}