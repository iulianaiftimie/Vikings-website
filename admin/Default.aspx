<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="textCenter"><h2 class="infotitle">Welcome to the admin-page</h2></div>
    <div class="textCenter"><p class="infodetails">If you want to logout</p></div>
    <asp:Button ID="btnLogout" runat="server" Text="Click Here" CssClass="btnDefault" OnClick="btnLogout_Click" />
</asp:Content>

