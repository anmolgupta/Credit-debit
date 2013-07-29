<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="selecton.aspx.cs" Inherits="selecton" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p align="center">
        Select Division :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem Value="NR">Northern Railways</asp:ListItem>
            <asp:ListItem Value="CR">Central Railway</asp:ListItem>
            <asp:ListItem Value="EA">Eastern Railway</asp:ListItem>
            <asp:ListItem Value="NER">Northern Eastern Railway</asp:ListItem>
            <asp:ListItem Value="NFR">Northeast Frontier Railway</asp:ListItem>
            <asp:ListItem Value="SR">Southern Railway</asp:ListItem>
            <asp:ListItem Value="SCR">South Central Railway</asp:ListItem>
            <asp:ListItem Value="ser">South Eastern Railway</asp:ListItem>
            <asp:ListItem Value="WR">Western Railway</asp:ListItem>
            <asp:ListItem Value="ECR">East Central Railway</asp:ListItem>
            <asp:ListItem Value="ECR">East Coast Railway</asp:ListItem>
            <asp:ListItem Value="NCR">North Central Railway</asp:ListItem>
            <asp:ListItem Value="NWR">North Western Railway</asp:ListItem>
            <asp:ListItem Value="SECR">South East Central Railway</asp:ListItem>
            <asp:ListItem Value="SWR">South Western Railway</asp:ListItem>
            <asp:ListItem Value="WCR">West Central Railway</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" Text="GO" onclick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

