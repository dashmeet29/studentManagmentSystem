﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="AddStudentLink.aspx.cs" Inherits="Case_Study_A.AddStudentLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddStudentContent" runat="server">
    <p>
        <div>
        <br />
        <h1 align="center" class="text-primary" "text-center">  Add Student Details </h1> 
              <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>College Id</label>
<%--                      <input id="txt_CollegeId" type="number" class="form-control" name="CollegeId">--%>
                          <br />
                          <br />
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="C_Id" DataValueField="C_Id">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [C_Id], [C_Name] FROM [CollegeDetails]"></asp:SqlDataSource>
                          <asp:RequiredFieldValidator ID="rfvCollegeId" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select CollegeId"></asp:RequiredFieldValidator>
                          <br />
                    <br />

                     <label>Course Id</label>

                          <br />
                          <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Course_Id" DataValueField="Course_Id">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [Course_Id], [Course_Name] FROM [CourseDetails]"></asp:SqlDataSource>
                          <asp:RequiredFieldValidator ID="rfvCourseId" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select CourseId"></asp:RequiredFieldValidator>
                          <br />

                          <br />
                          <asp:Button ID="btn_AddStudentDetails" runat="server" Text="Add Student Details" Class="btn btn-primary" OnClick="btn_AddStudentDetails_Click" />


                       &nbsp;
                          <asp:Label ID="lblMessage" runat="server" Text="lblMessage"></asp:Label>


                       </div>
</div>
</div>
            </div>  
    
  
        </div>
    </p>
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
</asp:Content>
