<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHomeMaster.master" AutoEventWireup="true" CodeBehind="WelcomStudent.aspx.cs" Inherits="Case_Study_A.WelcomStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeStudentDetail" runat="server">
    
      
    <h1 align:"centre" class="text-center" > &nbsp;Welcome Student
        <asp:Label ID="lblName" runat="server"></asp:Label>
    </h1>
     <div class="container"> 
        <div class="row">
            <div class="col-md-12 text-center">
    <table style="width: 100%; border-style: solid; border-width: 1px " class="table table-stripped" >
    <tr>
        <td class="auto-style2 bg bg-secondary" style="width: 364px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
        <td>
            &nbsp;
            <asp:Label ID="lbl_DispName" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2 " style="width: 364px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email</td>
        <td>
            &nbsp;&nbsp;
            <asp:Label ID="lbl_DispEmail" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2 bg bg-secondary" style="width: 364px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_DispAddress" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 364px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course ID</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_DispCourseId" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2  bg bg-secondary" style="width: 364px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Course Name</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_DispCourseName" runat="server"></asp:Label>
        </td>
    </tr>
</table>
        </div>
    </div>
</div>
</asp:Content>
