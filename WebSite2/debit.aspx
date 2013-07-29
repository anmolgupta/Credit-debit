<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="debit.aspx.cs" Inherits="debit" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Validate Cheque" />
    </p>
    <p align="center">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Debit Account Status" />
    </p>
    <p align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

