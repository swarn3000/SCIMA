<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SCIMALoginPage.aspx.cs" Inherits="WebApplication3.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 713px;
            height: 233px;
        }
        .auto-style2 {
            width: 258px;
            height: 75px;
        }
        .auto-style3 {
            width: 152px;
            height: 75px;
        }
        .auto-style4 {
            width: 284px;
            height: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <img alt="SCIMA" class="auto-style1" src="images/SCIMA%20logo.jpg" /><br />
        <asp:Login ID="Login1" runat="server" Height="155px" Width="464px">
        </asp:Login>
        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login1" />

        <img alt="WairarapaDHB" class="auto-style2" src="images/wairarapa.png" /><img alt="Hutt Valley DHB" class="auto-style3" src="images/huttvalley.png" /><img alt="CCDHB" class="auto-style4" src="images/CCDHB_logo_smll.jpg" /><br />
    </div>
    </form>
</body>
</html>
