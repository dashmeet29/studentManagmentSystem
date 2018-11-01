<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="SendMailTo.aspx.cs" Inherits="Case_Study_A.SendMailTo" %>
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
    <h4 align="center" class="text-success" id="lbl"> The selected student is in College 
      <asp:Label ID="cllgname" runat="server">cllgname</asp:Label>
&nbsp;in 
      <asp:Label ID="cllgadd" runat="server">cllgadd</asp:Label>
&nbsp;that has an event
      <asp:Label ID="lblevent" runat="server">event</asp:Label>
    &nbsp;
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h4>
   <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <br />
<div align="centre">
    <br />
<asp:Button ID="btn_SendMail" runat="server" align="center" Text="Send Mail" class="btn btn-success" OnClick="btn_SendMail_Click" />&nbsp;&nbsp;
            <asp:Label ID="lblinfo" runat="server"></asp:Label>
            </div>
            &nbsp;
            </div>
    </div>
   

</asp:Content>
<%--<asp:Content ID="Content17" ContentPlaceHolderID="SendMailContent" runat="server">
</asp:Content>--%>
