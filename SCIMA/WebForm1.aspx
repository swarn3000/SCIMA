<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SCIMA.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main_page</title>
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
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <img alt="SCIMA" class="auto-style2" src="SCIMA%20Final-page-001.jpg" /><asp:Image ID="Image1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Arial">Main Page</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Arial">New Prescription</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Names="Arial">Recall Prescription</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Names="Arial">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="User is logged in as:" Font-Names="Arial"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? Please logout." Font-Names="Arial"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New prescription" Font-Names="Arial" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Recall previous prescription" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
