<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Update_edit.aspx.cs" Inherits="admin_Update_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="textCenter"><h2 class="infotitle">Edit Subject</h2>

    <p class="infodetails">Title</p>
    <asp:TextBox ID="txtTitle" runat="server" autofocus CssClass="txtBox" />
    <br />
    <p class="infodetails">Text</p>
    <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" CssClass="txtBoxMulti" />
    <br />
    <asp:Image ID="imgImage" runat="server" CssClass="imgedit" />
    <br />
    <asp:CheckBox ID="chbImg" runat="server" Text="Delete image" CssClass="textCenter" />
    <br />
    <asp:FileUpload ID="fuImage" runat="server" CssClass="textCenter" />
    <br />
    <asp:Button ID="btnSend" runat="server" Text="Edit" OnClick="btnSend_Click" CssClass="btnDefault" />
    <br />
    <asp:Literal ID="litResult" runat="server" />

    </div>
</asp:Content>

