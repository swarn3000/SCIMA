
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recipe.aspx.cs" Inherits="recipe_page_1.Recipe" %>

<!DOCTYPE html>
<script runat="server">
    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 18px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 400px;
            height: 200px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            height: 26px;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <p style="font-family: helvetica">&nbsp;</p>
    <form id="form1" runat="server" itemref="p">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button6" runat="server" Text="Main Page" />
&nbsp;
                    <asp:Button ID="Button7" runat="server" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <img alt="SCIMA" class="auto-style4" src="NewFolder1/images/SCIMA%20logo.jpg" /></td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Patient NHI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Patient_NHI_R" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Surname_R" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Firstname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Firstname_R" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="D.O.B."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Birthdate_R" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Doctor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Doctor_R" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="MCNZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="MCNZ_R" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Drug"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Dose"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Length of time"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Concentration of amp per ml"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Check amp"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Volume needed"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                </td>
                <td class="auto-style3">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="24px" OnCallingDataMethods="DropDownList1_SelectedIndexChanged" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="176px" DataSourceID="SqlDataSource1" DataTextField="StrengthID" DataValueField="StrengthID">
        </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DrugsConnectionString %>" SelectCommand="spGetStrengthsByDrugID" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="DrugID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="Dose_1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                   
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label16" runat="server" Text="ml"></asp:Label>
                   
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DDLTime_1" runat="server">
                        <asp:ListItem>12 hrs</asp:ListItem>
                        <asp:ListItem>24 hrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Concentration_1" runat="server" ValidateRequestMode="Enabled" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="StrengthName" DataValueField="StrengthName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DrugsConnectionString %>" SelectCommand="spGetStrengthsByDrugID" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="DrugID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                &nbsp;
                </td>
                <td class="auto-style3">
                    <asp:CheckBox ID="Tick" runat="server" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Volume_1" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Add_1" runat="server" Text="Add Drug" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="175px" Visible="False" DataSourceID="SqlDataSource1" DataTextField="DrugID" DataValueField="DrugID">
            <asp:ListItem Text="Tartrate" Value ="1" ></asp:ListItem>
            <asp:ListItem Text="Morphine sulphate" Value ="2"></asp:ListItem>
            <asp:ListItem Text="Fentanyl" Value ="3"></asp:ListItem>
            <asp:ListItem Text="Ondansetron" Value ="4"></asp:ListItem>
            <asp:ListItem Text="Midazolam" Value ="5"></asp:ListItem>
            <asp:ListItem Text="Dexamethasone" Value ="6"></asp:ListItem>
            <asp:ListItem Text="Hyoscine butylbromide" Value ="7"></asp:ListItem>
            <asp:ListItem Text="Levomepromazine" Value ="8"></asp:ListItem>
            <asp:ListItem Text="Metoclopramide" Value ="9"></asp:ListItem>
            <asp:ListItem Text="Haloperidol" Value ="10"></asp:ListItem>
            <asp:ListItem Text="Cyclizine" Value ="11"></asp:ListItem>
            <asp:ListItem Text="Oxycodone" Value ="12"></asp:ListItem>
            <asp:ListItem Text="Octreotide" Value ="13"></asp:ListItem>
            <asp:ListItem Text="Clonazepam" Value ="14"></asp:ListItem>
            <asp:ListItem Text="Methadone" Value ="15"></asp:ListItem>
            <asp:ListItem Text="Ketamine" Value ="16"></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Dose_2" runat="server" OnTextChanged="Dose_2_TextChanged" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" Text="ml" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDLTime_2" runat="server" Visible="False">
                        <asp:ListItem>12 hrs</asp:ListItem>
                        <asp:ListItem>24 hrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="Concentration_2" runat="server" Visible="False" DataSourceID="SqlDataSource2" DataTextField="StrengthName" DataValueField="StrengthName">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="Tick1" runat="server" Visible="False" />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Volume_2" runat="server" OnTextChanged="TextBox12_TextChanged" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Add_2" runat="server" Text="Add Drug" OnClick="Add_2_Click" />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="175px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Visible="False">
                        <asp:ListItem>Morphine sulphate</asp:ListItem>
                        <asp:ListItem>Fentanyl</asp:ListItem>
                        <asp:ListItem>Ondansetron</asp:ListItem>
                        <asp:ListItem>Midazolam</asp:ListItem>
                        <asp:ListItem>Dexamethasone</asp:ListItem>
                        <asp:ListItem>Hyoscine butylbromide</asp:ListItem>
                        <asp:ListItem>Levomepromazine</asp:ListItem>
                        <asp:ListItem>Metoclopramide</asp:ListItem>
                        <asp:ListItem>Haloperidol</asp:ListItem>
                        <asp:ListItem>Cyclizine</asp:ListItem>
                        <asp:ListItem>Oxycodone</asp:ListItem>
                        <asp:ListItem>Octreotide</asp:ListItem>
                        <asp:ListItem>Clonazepam</asp:ListItem>
                        <asp:ListItem>Methadone</asp:ListItem>
                        <asp:ListItem>Ketamine</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="Dose_3" runat="server" OnTextChanged="Dose_3_TextChanged" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="ml" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDLTime_3" runat="server" Visible="False">
                        <asp:ListItem>12 hrs</asp:ListItem>
                        <asp:ListItem>24 hrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="Concentration_3" runat="server" Height="17px" Width="38px" Visible="False">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:CheckBox ID="Tick2" runat="server" Visible="False" />
                </td>
                <td>
                    <asp:TextBox ID="Volume_3" runat="server" OnTextChanged="Volume_3_TextChanged" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Add_3" runat="server" Text="Add Drug" OnClick="Add_3_Click" />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="19px" Width="174px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Visible="False">
                        <asp:ListItem>Morphine sulphate</asp:ListItem>
                        <asp:ListItem>Fentanyl</asp:ListItem>
                        <asp:ListItem>Ondansetron</asp:ListItem>
                        <asp:ListItem>Midazolam</asp:ListItem>
                        <asp:ListItem>Dexamethasone</asp:ListItem>
                        <asp:ListItem>Hyoscine butylbromide</asp:ListItem>
                        <asp:ListItem>Levomepromazine</asp:ListItem>
                        <asp:ListItem>Metoclopramide</asp:ListItem>
                        <asp:ListItem>Haloperidol</asp:ListItem>
                        <asp:ListItem>Cyclizine</asp:ListItem>
                        <asp:ListItem>Oxycodone</asp:ListItem>
                        <asp:ListItem>Octreotide</asp:ListItem>
                        <asp:ListItem>Clonazepam</asp:ListItem>
                        <asp:ListItem>Methadone</asp:ListItem>
                        <asp:ListItem>Ketamine</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="Dose_4" runat="server" OnTextChanged="TextBox11_TextChanged" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="ml" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDLTime_4" runat="server" Visible="False">
                        <asp:ListItem>12 hrs</asp:ListItem>
                        <asp:ListItem>24 hrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="Concentration_4" runat="server" Height="16px" Width="37px" Visible="False">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:CheckBox ID="Tick3" runat="server" Visible="False" />
                </td>
                <td>
                    <asp:TextBox ID="Volume_4" runat="server" OnTextChanged="Volume_4_TextChanged" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Volume of syringe"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Syringe volume check"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Allergies"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="319px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
