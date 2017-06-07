<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Presciption_screen.aspx.cs" Inherits="recipe_page_1.Presciption_screen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style28 {
            width: 11px;
        }
        .auto-style29 {
            width: 760px;
            text-align: right;
        }
        .auto-style30 {
            text-align: right;
        }
        .auto-style31 {
            margin-left: 695px;
        }
        .auto-style33 {
            width: 400px;
            height: 200px;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style55 {
            margin-left: 0px;
        }
        .auto-style56 {
            margin-left: 5px;
        }
        .auto-style58 {
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <p style="font-family: helvetica"></p>
    <p style="font-family: helvetica"></p>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style30">&nbsp; &nbsp;<asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Main Page" />
&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <img alt="SCIMA" class="auto-style33" src="NewFolder1/images/SCIMA%20logo.jpg" /></td>
            </tr>
        </table>
        <br />

        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Patient NHI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Firstname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="D.O.B."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Doctor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="MCNZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
        <p>
            &nbsp;&nbsp;
                    <asp:Label ID="Label48" runat="server" Text="Add"></asp:Label>
                &nbsp;<asp:TextBox ID="Drug_2" runat="server" Width="160px" CssClass="auto-style56" ></asp:TextBox>
                &nbsp;<asp:Label ID="Label49" runat="server" Text="ml"></asp:Label>
                &nbsp;<asp:Label ID="Label50" runat="server" Text="of"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox35" runat="server" Width="160px" CssClass="auto-style55"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox36" runat="server" Width="160px" CssClass="auto-style58"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox37" runat="server" Width="141px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label51" runat="server" Text="to syringe"></asp:Label>
                </p>
        <p>
            &nbsp;&nbsp;
                    <asp:Label ID="Label52" runat="server" Text="Add"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="Drug_3" runat="server" Width="160px" ></asp:TextBox>
                &nbsp;<asp:Label ID="Label53" runat="server" Text="ml"></asp:Label>
                &nbsp;<asp:Label ID="Label54" runat="server" Text="of"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox39" runat="server" Width="160px"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox40" runat="server" Width="160px"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox41" runat="server" Width="141px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label55" runat="server" Text="to syringe"></asp:Label>
                </p>
        <p>
            &nbsp;&nbsp;
                    <asp:Label ID="Label56" runat="server" Text="Add"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="Drug_4" runat="server" Width="160px" OnTextChanged="TextBox42_TextChanged"></asp:TextBox>
                &nbsp;<asp:Label ID="Label57" runat="server" Text="ml"></asp:Label>
                &nbsp;<asp:Label ID="Label58" runat="server" Text="of"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox43" runat="server" Width="160px"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox44" runat="server" Width="160px"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox45" runat="server" Width="141px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label59" runat="server" Text="to syringe"></asp:Label>
                </p>
        <p>
            &nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Total drug volume"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label18" runat="server" Text="ml"></asp:Label>
                </p>
        <p>
            &nbsp;
                    <asp:Label ID="Label19" runat="server" Text="Add"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label20" runat="server" Text="ml"></asp:Label>
                &nbsp;<asp:Label ID="Label21" runat="server" Text="of"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label22" runat="server" Text="to complete this syringe"></asp:Label>
                </p>
        <p>
            &nbsp; &nbsp;<asp:Label ID="Label23" runat="server" Text="Total syringe volume"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label24" runat="server" Text="ml"></asp:Label>
                </p>
        <p>
            &nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Drug volumes required :"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label8" runat="server" Text="Syringe volume"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox7" runat="server" Height="18px" Width="29px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label12" runat="server" Text="ml"></asp:Label>
                &nbsp;<asp:Label ID="Label9" runat="server" Text="Syringe volume is:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox8" runat="server" Height="16px" Width="98px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label10" runat="server" Text="Length of time"></asp:Label>
                &nbsp;<asp:TextBox ID="LOT" runat="server" Width="38px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label11" runat="server" Text="hrs"></asp:Label>
                </p>
         <p>
            &nbsp;
                    &nbsp;&nbsp;&nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label25" runat="server" Font-Underline="True" ForeColor="Red" Text="IMPORTANT INFORMATION:"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="Note this prescription contains"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" Text="therefore use"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" Text="as the diluent"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label29" runat="server" ForeColor="Red" Text="Note this prescription contains"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label30" runat="server" Text="which should be added"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label31" runat="server" Text="to avoid precipitation"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style30">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Text="Back" Width="39px" PostBackUrl="~/Recipe.aspx" OnClick="Button1_Click" />
                </td>
                <td class="auto-style29">
                    <asp:Button ID="Button2" runat="server" Text="Save" />
                </td>
                <td class="auto-style30">
                    <asp:Button ID="Button3" runat="server" Text="Print" Height="27px" Width="36px" />
                </td>
            </tr>
        </table>
       
        
       
        
       
        
       
    </form>
</body>
</html>
