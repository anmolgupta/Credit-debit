<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="select_opt.aspx.cs" Inherits="select_opt" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="Credit" />
    </p>
    <p align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Debit" />
    </p>
    <p align="center">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" />
    </p>
</asp:Content>

