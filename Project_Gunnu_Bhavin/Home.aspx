<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_Gunnu_Bhavin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <style type="text/css">
    .textbox {}
    .auto-style16 {}
</style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    Shift Planning
You'll have a great show, if you're well prepared.

Organized Shift Summaries. Share upcoming shift details with your kitchen and wait staff.
Manager Shift Notes. Add notes to a shift to keep you and your team on the same page.
NEW More Control Over Availability. Decide how and when your tables can be booked online.<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="auto-style6">
                                 <tr>
                                     <td colspan="2">SIGN-IN&nbsp;&nbsp;
                                         <asp:Label ID="Label3" runat="server"></asp:Label>
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style13">
                                         <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
                                         <br />
                                     </td>
                                     <td class="auto-style13">
                                         <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" Width="113px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:Label ID="Label2"  runat="server" Text="PASSWORD"></asp:Label>
                                         <br />
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox2" CssClass="textbox" type="password" runat="server" Width="102px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td colspan="2">
                                         <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Text="SIGN-IN" Width="290px" Height="49px" OnClick="Button1_Click" />
                                         <br />
                                         <br />
                                    <a href="Register.aspx" runat="server"> Dont have an id yet? Get Registered !</a>
                                     </td>
                                 </tr>
                             </table>
</asp:Content>
