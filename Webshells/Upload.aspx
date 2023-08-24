<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Vulnerable_Web_Applications.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" EncType="multipart/form-data" action="Upload.aspx">
        <div>
            <%--ASP.NET control to upload a file--%>  
            <asp:FileUpload ID="FileUpload1" runat="server"  EncType="multipart/form-data" action="Upload.aspx"/>  
               
            <%--Button to Upload the file--%>  
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload File" />  
            <br />  
            <br />  
            <br /> 
        </div>
    </form>
</body>
</html>
