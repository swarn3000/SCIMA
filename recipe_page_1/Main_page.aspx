<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main_page.aspx.cs" Inherits="recipe_page_1.Main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 124px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style7 {
            width: 400px;
            height: 200px;
        }
        .auto-style8 {
            margin-left: 29px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p style="font-family: helvetica" class="auto-style5">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Logout" />
        </p>    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <img alt="SCIMA" class="auto-style7" src="NewFolder1/images/SCIMA%20logo.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server">Main page</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton2" runat="server">New script</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton3" runat="server">Recall script</asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:LinkButton ID="LinkButton4" runat="server">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="User logged in as:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? please logout."></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="New preperation order" PostBackUrl="~/New_Script.aspx" Width="221px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Recall preperation order" CssClass="auto-style8" PostBackUrl="~/Recall_script.aspx" Width="221px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
