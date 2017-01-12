<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="textCenter">
    <div class="username">
    <p>Username: </p></div>
    <asp:TextBox ID="txtUser" runat="server" autofocus placeholder="Username" CssClass="txtBox" />
    <br />
    <div class="username">
    <p>Password: </p></div>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="txtBox" />
    <br />

    <asp:Button ID="btnSend" runat="server" Text="Login" OnClick="btnSend_Click" CssClass="btnDefault2" />
    <br />
    <asp:Literal ID="litResult" runat="server" />
    </div>

</asp:Content>

