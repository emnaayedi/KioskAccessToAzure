<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  

<head runat="server">  
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf_viewer.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var pdfjsLib = window['pdfjs-dist/build/pdf'];
        pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.worker.min.js';
        var pdfDoc = null;
        var scale = 1; //Set Scale for zooming PDF.
        var resolution = 1; //Set Resolution to Adjust PDF clarity.
 
        function LoadPdfFromUrl() {
            //Read PDF from URL.
            var URL = '<%=URL%>';
            pdfjsLib.getDocument(URL).promise.then(function (pdfDoc_) {
                pdfDoc = pdfDoc_;
 
                //Reference the Container DIV.
                var pdf_container = document.getElementById("pdf_container");
                pdf_container.style.display = "block";
 
                //Loop and render all pages.
                for (var i = 1; i <= pdfDoc.numPages; i++) {
                    RenderPage(pdf_container, i);
                }
            });
        };
        function RenderPage(pdf_container, num) {
            pdfDoc.getPage(num).then(function (page) {
                //Create Canvas element and append to the Container DIV.
                var canvas = document.createElement('canvas');
                canvas.id = 'pdf-' + num;
                ctx = canvas.getContext('2d');
                pdf_container.appendChild(canvas);
 
                //Create and add empty DIV to add SPACE between pages.
                var spacer = document.createElement("div");
                spacer.style.height = "20px";
                pdf_container.appendChild(spacer);
 
                //Set the Canvas dimensions using ViewPort and Scale.
                var viewport = page.getViewport({ scale: scale });
                canvas.height = resolution * viewport.height;
                canvas.width = resolution * viewport.width;
 
                //Render the PDF page.
                var renderContext = {
                    canvasContext: ctx,
                    viewport: viewport,
                    transform: [resolution, 0, 0, resolution, 0, 0]
                };
 
               page.render(renderContext);
            });
        };
    </script>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <style>
      #container { overflow: auto; -webkit-overflow-scrolling: touch; height:500px; }
    </style>
  <%--   <script>
         document.getElementById("iframe").contentWindow.onload = function () {
             this.document.getElementsByTagName("img")[0].style.width = "100%";
         };
</script>--%>
    <title></title>  
</head>  <body onload="LoadPdfFromUrl()"><%--    <form>--%>            <div id="pdf_container"></div>
 <%--   <div id="container">    <embed runat="server" class="iframe" type="application/pdf"   scrolling="auto" id="iframe" frameborder="0" allowfullscreen="true"  />
           </div> 
        </form>--%>
</body>  
</html>  
