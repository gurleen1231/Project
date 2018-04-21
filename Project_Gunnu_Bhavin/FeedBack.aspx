<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Project_Gunnu_Bhavin.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p>
        <img alt="feedback" class="auto-style18" src="feedback.jpg" /></p>
        <h2>Your feedback is important for us:</h2>

    Username:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<p>
        Feedback:</p>
<p>
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="72px" Width="542px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" CssStyle="auto-style-6" runat="server" Text="Submit" Width="115px" OnClick="Button2_Click" />
    &nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
