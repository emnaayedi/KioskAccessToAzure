using Azure.Storage;
using Azure.Storage.Blobs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        protected async Task Page_Load(object sender, EventArgs e)
        {
            //        string connectionString = "DefaultEndpointsProtocol=https;AccountName=pdfreportsaquila;AccountKey=QC+mUrcvLW8Mxajn4BgAbXijRIsE9Sg/dG/lM/yKlWEA22vwAH4w6cY2pBcqyugIzSkEbb8WrQlL+AStjuxszA==;EndpointSuffix=core.windows.net";

            //        // Create a BlobServiceClient object which will be used to create a container client
            //        BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);

            //        string blobContainerName = "soaktestreports";
            //        // Find the container and return a container client object

            //        BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(blobContainerName);
            //        var latestBlob = containerClient.GetBlobs()
            //   .OrderByDescending(m => m.Properties.LastModified)
            //.ToList()
            //.First();
        
                var pdf = Request.QueryString["fileName"].ToString();

                Azure.Storage.Sas.BlobSasBuilder blobSasBuilder = new Azure.Storage.Sas.BlobSasBuilder()
                {
                    BlobContainerName = "soaktestreports",
                    BlobName = pdf,
                    ExpiresOn = DateTime.UtcNow.AddSeconds(2),//Let SAS token expire after 5 minutes.
                };
                blobSasBuilder.SetPermissions(Azure.Storage.Sas.BlobSasPermissions.Read);//User will only be able to read the blob and it's properties
                var sasToken = blobSasBuilder.ToSasQueryParameters(new StorageSharedKeyCredential("pdfreportsaquila", "QC+mUrcvLW8Mxajn4BgAbXijRIsE9Sg/dG/lM/yKlWEA22vwAH4w6cY2pBcqyugIzSkEbb8WrQlL+AStjuxszA==")).ToString();
           

            
                Response.Redirect("https://pdfreportsaquila.blob.core.windows.net/soaktestreports/" + pdf + "?" + sasToken.ToString());
        
            

        }

    }
}