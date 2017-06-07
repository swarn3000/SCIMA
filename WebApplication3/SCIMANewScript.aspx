<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCIMANewScript.aspx.cs" Inherits="SCIMANewScript" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SCIMANewScript</title>
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
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            padding-bottom: 0px;
        }
        .auto-style9 {
            height: 23px;
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton1" runat="server">Main page</asp:LinkButton>
                </td>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton2" runat="server">New prescription</asp:LinkButton>
                </td>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton3" runat="server">Recall prescription</asp:LinkButton>
                </td>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton4" runat="server">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User logged in as:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? please logout."></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Patient NHI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Firstname"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="D.O.B."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Doctor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="MCNZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Reset" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Default.aspx" Text="Continue" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
