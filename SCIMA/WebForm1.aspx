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
            width: 359px;
        }
        .auto-style6 {
            text-align: center;
            width: 245px;
        }
        .auto-style7 {
            text-align: center;
            width: 282px;
        }
        .auto-style17 {
            text-align: right;
            width: 205px;
        }
        .auto-style18 {
            text-align: left;
            width: 206px;
        }
        .auto-style19 {
            text-align: center;
            width: 20px;
        }
        .auto-style20 {
            text-align: center;
            width: 298px;
        }
        .auto-style21 {
            text-align: center;
            width: 14px;
        }
        .auto-style22 {
            text-align: center;
            width: 17px;
        }
        .auto-style23 {
            text-align: left;
            width: 334px;
        }
        .auto-style24 {
            text-align: right;
            width: 407px;
        }
        .auto-style25 {
            text-align: right;
            width: 85px;
        }
        .auto-style26 {
            margin-left: 0px;
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style17">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Arial">Main Page</asp:LinkButton>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Arial">New Prescription</asp:LinkButton>
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style20">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Names="Arial">Recall Prescription</asp:LinkButton>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Names="Arial">Logout</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="User is logged in as:" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? Please logout." Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New prescription" CssClass="auto-style26" Font-Names="Arial" Font-Size="Medium" Width="440px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Recall previous prescription" Font-Size="Medium" Width="438px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
