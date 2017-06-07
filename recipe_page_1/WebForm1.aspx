<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="recipe_page_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 543px;
            width: 1488px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <br />
&nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4">
        <asp:Label ID="Label1" runat="server" Text="Drug"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Label ID="Label2" runat="server" Text="Concentration"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Amplues"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Label ID="Label3" runat="server" Text="Units"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Dose"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Label ID="Label6" runat="server" Text="Check ampules"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Label ID="Label7" runat="server" Text="Volume"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    
        <asp:DropDownList ID="DrugList1" runat="server" AutoPostBack ="true"
         DataTextField = "DrugName" DataValueField="DrugID" OnSelectedIndexChanged="DrugList1_SelectedIndexChanged" style="height: 22px"  ></asp:DropDownList>
                </td>
                <td>
        <asp:DropDownList ID="ConcentrationList1" runat="server" AutoPostBack ="true"
            DataTextField = "StrengthName" DataValueField="StrengthID" OnSelectedIndexChanged="ConcentrationList1_SelectedIndexChanged" ></asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="AmpulesTextBox1"  runat="server" Width="60px" OnTextChanged="TextBox1_TextChanged"  ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="UnitsLabel1" runat="server" Text="UnitsLabel1"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="DoseTextBox1" runat="server" OnTextChanged="TextBox7_TextChanged" Width="60px"></asp:TextBox>
                </td>
                <td>
        <asp:DropDownList ID="TimeDropDownList1" runat="server">
            <asp:ListItem>12 hrs</asp:ListItem>
            <asp:ListItem>24 hrs</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="CheckAmpulesTextBox1" runat="server" Width="103px"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="VolumeTextBox1" runat="server"  Width="60px" OnTextChanged="VolumeTextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DrugList2" runat="server" AutoPostBack ="true" 
                         DataTextField="DrugName" DataValueField="DrugID" OnSelectedIndexChanged="DrugList2_SelectedIndexChanged"
                          ></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ConcentrationList2" runat="server" AutoPostBack ="true"
                        DataTextField = "StrengthName" DataValueField="StrengthID" OnSelectedIndexChanged="ConcentrationList2_SelectedIndexChanged" ></asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="AmpulesTextBox2" runat="server"  Width="60px" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="UnitsLabel2" runat="server" Text="UnitsLabel2"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="DoseTextBox2" runat="server" OnTextChanged="TextBox7_TextChanged" Width="60px"></asp:TextBox>
                </td>
                <td>
        <asp:DropDownList ID="TimeDropDownList2" runat="server">
            <asp:ListItem>12 hrs</asp:ListItem>
            <asp:ListItem>24 hrs</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="CheckAmpulesTextBox2" runat="server" Width="103px"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="VolumeTextBox2" runat="server"  Width="60px" OnTextChanged="VolumeTextBox2_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DrugList3" runat="server" AutoPostBack ="true"
                        DataTextField="DrugName" DataValueField="DrugID" OnSelectedIndexChanged="DrugList3_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ConcentrationList3" runat="server" AutoPostBack ="true"
                        DataTextField = "StrengthName" DataValueField="StrengthID" OnSelectedIndexChanged="ConcentrationList3_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="AmpulesTextBox3" runat="server"  Width="60px" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="UnitsLabel3" runat="server" Text="UnitsLabel3"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="DoseTextBox3" runat="server" OnTextChanged="TextBox7_TextChanged" Width="60px"></asp:TextBox>
                </td>
                <td>
        <asp:DropDownList ID="TimeDropDownList3" runat="server">
            <asp:ListItem>12 hrs</asp:ListItem>
            <asp:ListItem>24 hrs</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="CheckAmpulesTextBox3" runat="server" Width="103px"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="VolumeTextBox3" runat="server"  Width="60px" OnTextChanged="VolumeTextBox3_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DrugList4" runat="server" AutoPostBack ="true"
                         DataTextField="DrugName" DataValueField="DrugID" OnSelectedIndexChanged="DrugList4_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ConcentrationList4" runat="server" AutoPostBack ="true"
                        DataTextField = "StrengthName" DataValueField="StrengthID" OnSelectedIndexChanged="ConcentrationList4_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="AmpulesTextBox4" runat="server"  Width="60px" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="UnitsLabel4" runat="server" Text="UnitsLabel4"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="DoseTextBox4" runat="server" OnTextChanged="TextBox7_TextChanged" Width="60px"></asp:TextBox>
                </td>
                <td>
        <asp:DropDownList ID="TimeDropDownList4" runat="server">
            <asp:ListItem>12 hrs</asp:ListItem>
            <asp:ListItem>24 hrs</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
        <asp:TextBox ID="CheckAmpulesTextBox4" runat="server" Width="103px"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="VolumeTextBox4" runat="server"  Width="60px" OnTextChanged="VolumeTextBox4_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="TotalVolume" runat="server" Text="Total Volume"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TotalVolumeTextBox" runat="server"  Width="60px" OnTextChanged="TotalVolumeTextBox_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Volume of Syringe"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="Syringe" runat="server" AutoPostBack ="true"
                         DataTextField="DrugName" DataValueField="DrugID" OnSelectedIndexChanged="DrugList4_SelectedIndexChanged">
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Volume of diluent required"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Diluent" runat="server"  Width="60px" OnTextChanged="Diluent_TextChanged" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Volume" style="height: 26px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Total" runat="server" OnClick="Button2_Click" Text="Total" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Back" />
        <br />
    
    </div>
    </form>
</body>
</html>
