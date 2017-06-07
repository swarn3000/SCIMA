<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New_Script.aspx.cs" Inherits="recipe_page_1.New_Script" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 400px;
            height: 200px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 118px;
        }
        .auto-style8 {
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <p style="font-family: helvetica"></p>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
                <td class="auto-style5">
                    <asp:LinkButton ID="LinkButton4" runat="server">Logout</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="User logged in as:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Not this user? please logout."></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Please enter patient details:"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1" align="right">
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Patient NHI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Patient_NHI_S" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Surname_S" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="First name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Firstname_S" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Birthdate_S" runat="server" OnTextChanged="Birthdate_S_TextChanged"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="19px" ImageUrl="~/NewFolder1/images/Calender.jpg" OnClick="ImageButton1_Click" />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style9" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Precribing doctor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Doctor_S" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="MCNZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="MCNZ_S" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Reset" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Continue" OnClick="Button2_Click" PostBackUrl="~/Recipe.aspx" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
