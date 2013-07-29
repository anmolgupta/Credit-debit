<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="valid.aspx.cs" Inherits="valid" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="296px" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" Visible="False" 
            Width="1239px">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:TemplateField HeaderText="Transaction">
                    <ItemTemplate>
                                <%#Eval("Transaction") %>
                            </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Recieving Date">
                    <ItemTemplate>
                                <%#Eval("sys_date") %>
                            </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount"><ItemTemplate>
                                <%#Eval("amount") %>
                            </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Bank Name"><ItemTemplate>
                                <%#Eval("bank_code") %>
                            </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Cheque no"><ItemTemplate>
                                <%#Eval("cheque_no") %>
                            </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Cheque Date"><ItemTemplate>
                                <%#Eval("cheque_date") %>
                            </ItemTemplate></asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
                <p>
                    &nbsp;</p>
    <p align="center">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p align="center">
        Enter Cheque no. to validate cheque :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="This field is mandatory"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter an integer value" 
            MaximumValue="999999" MinimumValue="0"></asp:RangeValidator>
    </p>
    <p align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Enter amount :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="This field is mandatory"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter an integer value" 
            MaximumValue="9999999999999999999999999999999999" MinimumValue="0"></asp:RangeValidator>
    </p>
    <p align="left" style="margin-left: 240px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Validate" />
    </p>
    <p align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
            CausesValidation="False" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

