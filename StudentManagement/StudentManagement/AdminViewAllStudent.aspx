<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="AdminViewAllStudent.aspx.cs" Inherits="Case_Study_A.AdminViewAllStudent" %>
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
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="UpdateFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="DeleteFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="AddCollege" runat="server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="UpdateCollege" runat="server">
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="DeleteCollege" runat="server">
</asp:Content>
<asp:Content ID="Content14" ContentPlaceHolderID="GenerateResult" runat="server">
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="ViewAllStudents" runat="server">


    <p>
   
         <div class="container">
             
                <h1 align="center" class="text-info" "text-center">List of all Students</h1>
                <p align="center" class="text-info" "text-center">&nbsp;</p>
                
                <p align="center" "text-center">
                    <div align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="S_Id" DataSourceID="SqlDataSource1" ForeColor="Black" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" SortExpression="S_Id" />
                            <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                            <asp:BoundField DataField="S_Address" HeaderText="S_Address" SortExpression="S_Address" />
                            <asp:BoundField DataField="S_Password" HeaderText="S_Password" SortExpression="S_Password" />
                            <asp:BoundField DataField="S_Email" HeaderText="S_Email" SortExpression="S_Email" />
                            <asp:BoundField DataField="s_Age" HeaderText="s_Age" SortExpression="s_Age" />
                            <asp:BoundField DataField="S_ParentName" HeaderText="S_ParentName" SortExpression="S_ParentName" />
                            <asp:BoundField DataField="S_ParentEmail" HeaderText="S_ParentEmail" SortExpression="S_ParentEmail" />
                            <asp:BoundField DataField="S_Attendence" HeaderText="S_Attendence" SortExpression="S_Attendence" />
                            <asp:BoundField DataField="S_C_Id" HeaderText="S_C_Id" SortExpression="S_C_Id" />
                            <asp:BoundField DataField="S_Course_Id" HeaderText="S_Course_Id" SortExpression="S_Course_Id" />
                            <asp:BoundField DataField="S_PhoneNo" HeaderText="S_PhoneNo" SortExpression="S_PhoneNo" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT * FROM [StudentDetails]"></asp:SqlDataSource>
                        </div>
                </p> 
            </div>  


</asp:Content>