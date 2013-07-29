<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bank.aspx.cs" Inherits="bank" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p align="center">
        Select Name of Bank :
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
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
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
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                                <%#Eval("sys_date") %>
                            </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Purpose">
                    <ItemTemplate>
                                <%#Eval("purpose") %>
                            </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount"><ItemTemplate>
                                <%#Eval("amount") %>
                            </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Party Name"><ItemTemplate>
                                <%#Eval("party") %>
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
    </p>
    <p align="center">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
    </p>
</asp:Content>

