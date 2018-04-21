<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="Project_Gunnu_Bhavin.TimeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DaysId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="DaysId" HeaderText="DaysId" ReadOnly="True" SortExpression="DaysId" />
            <asp:BoundField DataField="Sunday" HeaderText="Sunday" SortExpression="Sunday" />
            <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
            <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
            <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
            <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
            <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
            <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
            <asp:BoundField DataField="8AM_4PM" HeaderText="8AM_4PM" SortExpression="8AM_4PM" />
            <asp:BoundField DataField="4PM_12AM" HeaderText="4PM_12AM" SortExpression="4PM_12AM" />
            <asp:BoundField DataField="12AM_8AM" HeaderText="12AM_8AM" SortExpression="12AM_8AM" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeesConnectionString %>" DeleteCommand="DELETE FROM [Schedules] WHERE [DaysId] = @DaysId" InsertCommand="INSERT INTO [Schedules] ([DaysId], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [8AM_4PM], [4PM_12AM], [12AM_8AM]) VALUES (@DaysId, @Sunday, @Monday, @Tuesday, @Wednesday, @Thursday, @Friday, @Saturday, @column1, @column2, @column3)" SelectCommand="SELECT * FROM [Schedules]" UpdateCommand="UPDATE [Schedules] SET [Sunday] = @Sunday, [Monday] = @Monday, [Tuesday] = @Tuesday, [Wednesday] = @Wednesday, [Thursday] = @Thursday, [Friday] = @Friday, [Saturday] = @Saturday, [8AM_4PM] = @column1, [4PM_12AM] = @column2, [12AM_8AM] = @column3 WHERE [DaysId] = @DaysId">
        <DeleteParameters>
            <asp:Parameter Name="DaysId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DaysId" Type="Int32" />
            <asp:Parameter Name="Sunday" Type="String" />
            <asp:Parameter Name="Monday" Type="String" />
            <asp:Parameter Name="Tuesday" Type="String" />
            <asp:Parameter Name="Wednesday" Type="String" />
            <asp:Parameter Name="Thursday" Type="String" />
            <asp:Parameter Name="Friday" Type="String" />
            <asp:Parameter Name="Saturday" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="column3" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Sunday" Type="String" />
            <asp:Parameter Name="Monday" Type="String" />
            <asp:Parameter Name="Tuesday" Type="String" />
            <asp:Parameter Name="Wednesday" Type="String" />
            <asp:Parameter Name="Thursday" Type="String" />
            <asp:Parameter Name="Friday" Type="String" />
            <asp:Parameter Name="Saturday" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="column3" Type="String" />
            <asp:Parameter Name="DaysId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
