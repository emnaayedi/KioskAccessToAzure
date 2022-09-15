using Azure.Storage;
using Azure.Storage.Blobs;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.tool.xml;
using System.Net;
using iTextSharp.text.pdf;
using Microsoft.PowerBI.Api.Models;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        public string URL { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            URL = Request.QueryString["file"].ToString();

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



        }

        //protected void Page_LoadComplete(object sender, EventArgs e)
        //{
        //    Response.Clear();
        //    Response.ContentType = "application/pdf";
        //    Response.AddHeader("content-disposition", "attachment;filename=TestPage.pdf");
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    StringWriter sw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    Panel1.RenderControl(hw);
        //    StringReader sr = new StringReader(sw.ToString());
        //    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);

        //    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //    pdfDoc.Open();
        //    htmlparser.Parse(sr);
        //    pdfDoc.Close();
        //    Response.Write(pdfDoc);

        //    Response.End();

        //}

    }
}