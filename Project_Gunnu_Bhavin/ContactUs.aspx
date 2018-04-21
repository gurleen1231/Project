<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Project_Gunnu_Bhavin.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 119px;
            height: 143px;
        }
        .auto-style3 {
            width: 127px;
            height: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Appointment Date:"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="137px"></asp:TextBox>
<br />
<h1>Consultant one of these Consultants:</h1><br />
<asp:RadioButton ID="dolu" runat="server" GroupName="group" />
      <img alt="doluuu" class="auto-style2" src="Images/AirBrush_20170224022622.jpg" /><asp:Label ID="Label5" runat="server" Text="Gurleen Kaur"></asp:Label>
<br />
<asp:RadioButton ID="bhavin" runat="server" GroupName="group" />
      <img alt="bhavin" class="auto-style3" src="Images/bhavin.jpg" /><asp:Label ID="Label4" runat="server" Text="Bhavin "></asp:Label>
      <br />
      <br />
      <asp:Button ID="Button2" CssClass="auto-style16" runat="server" OnClick="Button2_Click" Text="Done" Height="65px" Width="108px" />
      <br />
<br />
</asp:Content>
