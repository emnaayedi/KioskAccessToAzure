using Azure.Storage.Blobs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = Environment.GetEnvironmentVariable("AZURE_STORAGE_CONNECTION_STRING");

            // Create a BlobServiceClient object which will be used to create a container client
            BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);

            string blobContainerName = "soaktestreports".ToString();
            // Find the container and return a container client object

            BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(blobContainerName);
            var latestBlob = containerClient.GetBlobs()
       .OrderByDescending(m => m.Properties.LastModified)
    .ToList()
    .First();
            Response.RedirectPermanent("https://pdfreportsaquila.blob.core.windows.net/soaktestreports/" + latestBlob.Name + "?sp=r&st=2022-09-08T18:30:50Z&se=2022-09-09T02:30:50Z&spr=https&sv=2021-06-08&sr=b&sig=iPiiCAWL2qqFHRVph30ZA6bTlmwX4ziHI2%2BF7FMBlFw%3D");
        }

    }
}