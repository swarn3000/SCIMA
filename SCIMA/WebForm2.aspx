<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SCIMA.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prescription _screen</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 400px;
            height: 200px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <img alt="SCIMA" class="auto-style2" src="SCIMA%20Final-page-001.jpg" /></td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server">Main page</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton2" runat="server">New prescription</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton3" runat="server">Recall prescription</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User logged in as:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? Please logout."></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
