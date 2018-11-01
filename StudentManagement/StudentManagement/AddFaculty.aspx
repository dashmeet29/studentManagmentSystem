<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" Inherits="Case_Study_A.AddFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UpdateStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DeleteStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="AddCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="UpdateCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="DeleteCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="AddFacultyContent" runat="server">
     <div>
            <div class="container">

             

                <h1 class="text-danger" style="text-align:center">  Add Faculty Details </h1> 

            </div>  
       
            <br />
       <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="F_Id" HeaderText="F_Id" ReadOnly="True" SortExpression="F_Id" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
                <asp:BoundField DataField="F_PhoneNo" HeaderText="F_PhoneNo" SortExpression="F_PhoneNo" />
                <asp:BoundField DataField="F_Email" HeaderText="F_Email" SortExpression="F_Email" />
                <asp:BoundField DataField="F_C_Id" HeaderText="F_C_Id" SortExpression="F_C_Id" />
                <asp:BoundField DataField="F_Salary" HeaderText="F_Salary" SortExpression="F_Salary" />
                <asp:BoundField DataField="F_Course_Id" HeaderText="F_Course_Id" SortExpression="F_Course_Id" />
                <asp:HyperLinkField DataNavigateUrlFields="F_Id" DataNavigateUrlFormatString="AddFacultyLink.aspx?ID={0}" HeaderText="Add Details" NavigateUrl="~/AddFacultyLink.aspx" Text="add_detail" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [F_Id], [F_Name], [F_PhoneNo], [F_Email], [F_C_Id], [F_Salary], [F_Course_Id] FROM [FacultyDetails]"></asp:SqlDataSource>
          </div> 
       
        </div>

</asp:Content>
