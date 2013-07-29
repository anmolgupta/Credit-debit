<%@ Page Language="C#"  Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="credit.aspx.cs" Inherits="credit" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style3">
                Transaction No.:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Purpose:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Reservation</asp:ListItem>
                    <asp:ListItem>cancellation</asp:ListItem>
                    <asp:ListItem>Freight</asp:ListItem>
                    <asp:ListItem>lost</asp:ListItem>
                    <asp:ListItem>miscellaneous</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Amount:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="This field need to be entered"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter an integer value" 
                    MaximumValue="99999999999999999999999999999999" MinimumValue="0" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Party Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Name of Bank :</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Select Bank</asp:ListItem>
                    <asp:ListItem>State Bank of India</asp:ListItem>
                    <asp:ListItem>Bank of Baroda</asp:ListItem>
                    <asp:ListItem>HDFC</asp:ListItem>
                    <asp:ListItem>Yes Bank</asp:ListItem>
                    <asp:ListItem>Axis Bank</asp:ListItem>
                    <asp:ListItem>Canara Bank</asp:ListItem>
                    <asp:ListItem>Punjab National Bank</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Cheque No.:</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="Enter integer value" MaximumValue="999999" MinimumValue="000001" 
                                Type="Integer" ControlToValidate="TextBox5"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Cheque Date:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Enter Record" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="Large" ForeColor="#000099"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Total :</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Report" 
                    CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                    CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

