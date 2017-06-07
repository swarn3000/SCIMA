<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signin_page.aspx.cs" Inherits="recipe_page_1.Signin_page" %>

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
            width: 400px;
            height: 200px;
        }
        .auto-style5 {
            text-align: right;
            width: 473px;
        }
        .auto-style6 {
            width: 98%;
            margin-top: 57px;
        }
        .auto-style7 {
            width: 578px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 150px;
            height: 50px;
        }
        .auto-style10 {
            width: 150px;
            height: 50px;
        }
        .auto-style11 {
            width: 150px;
            height: 50px;
            
        }
        .auto-style12 {
            width: 361px;
        }
        .auto-style13 {
            width: 94px;
        }
        .auto-style15 {
            text-align: right;
            width: 45px;
        }
        .auto-style16 {
            text-align: center;
            width: 176px;
        }
        .auto-style17 {
            width: 218px;
        }
    </style>
</head>
<body>
    <p style="font-family: helvetica"></p>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <img alt="SCIMA" class="auto-style3" src="NewFolder1/images/SCIMA%20logo.jpg" /></td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Please enter your username and password"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="Username_signin" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <table class="auto-style6">
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style12">
                    <asp:LinkButton ID="LinkButton1" runat="server">Forgot password ?</asp:LinkButton>
                </td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    <asp:LinkButton ID="LinkButton2" runat="server">Trouble logging in ?</asp:LinkButton>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <img alt="CCDHB" class="auto-style9" src="NewFolder1/images/ccdhb.jpeg" /></td>
            <td class="auto-style2">
                <img alt="HUTTVALLEY" class="auto-style10" src="NewFolder1/images/huttvalley.jpg" /></td>
            <td class="auto-style2">
                <img alt="WAIRARAPA" class="auto-style11" src="NewFolder1/images/wairarapa.jpg" /></td>
        </tr>
    </table>
</body>
</html>
