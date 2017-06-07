<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recall_script.aspx.cs" Inherits="recipe_page_1.Recall_script" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 400px;
            height: 200px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
            width: 600px;
        }
        .auto-style6 {
            margin-left: 7px;
        }
        .auto-style7 {
            width: 112px;
        }
        .auto-style8 {
            width: 187px;
        }
        .auto-style9 {
            text-align: right;
            width: 479px;
        }
        .auto-style12 {
            width: 479px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 600px;
        }
    </style>
</head>
<body>
    <p style="font-family: helvetica"></p>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Main page" />
&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <img alt="SCIMA" class="auto-style3" src="NewFolder1/images/SCIMA%20logo.jpg" /></td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">Main page</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton2" runat="server">New script</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton3" runat="server">Recall script</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="User currently logged in as:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? please logout."></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="Patient NHI"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="First name"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <br />
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Date of prescription"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style14">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Reset" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="Continue" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
