<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="MailEventDetails.aspx.cs" Inherits="Case_Study_A.MailEventDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UpdateStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DeleteStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ViewAllStudents" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="AddCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="UpdateCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="DeleteCourseContent" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="AddFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="UpdateFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="DeleteFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="AddCollege" runat="server">
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="UpdateCollege" runat="server">
</asp:Content>
<asp:Content ID="Content14" ContentPlaceHolderID="DeleteCollege" runat="server">
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="GenerateResult" runat="server">
</asp:Content>
<asp:Content ID="Content16" ContentPlaceHolderID="SendEventMailContent" runat="server">

    <p>
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="S_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" SortExpression="S_Id" />
                <asp:BoundField DataField="S_ParentName" HeaderText="S_ParentName" SortExpression="S_ParentName" />
                <asp:BoundField DataField="S_ParentEmail" HeaderText="S_ParentEmail" SortExpression="S_ParentEmail" />
                <asp:BoundField DataField="S_ParentPhone" HeaderText="S_ParentPhone" SortExpression="S_ParentPhone" />
                <asp:BoundField DataField="S_C_Id" HeaderText="S_C_Id" SortExpression="S_C_Id" />
                <asp:BoundField DataField="S_Course_Id" HeaderText="S_Course_Id" SortExpression="S_Course_Id" />
                <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                <asp:HyperLinkField DataNavigateUrlFields="S_C_Id" DataNavigateUrlFormatString="SendMailTo.aspx?ID={0}" NavigateUrl="~/SendMailTo.aspx" Text="Send_Mail" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [S_Id], [S_ParentName], [S_ParentEmail], [S_ParentPhone], [S_C_Id], [S_Course_Id], [S_Name] FROM [StudentDetails]"></asp:SqlDataSource>
        <br />
    </p>
</div>
</asp:Content>
