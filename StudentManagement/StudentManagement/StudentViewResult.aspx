<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHomeMaster.master" AutoEventWireup="true" CodeBehind="StudentViewResult.aspx.cs" Inherits="Case_Study_A.StudentViewResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeStudentDetail" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewResultContent" runat="server">


    <p>
       <h1 align="center" class="text-info"> Your ID is
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
&nbsp; Result is
        <asp:Label ID="lblMarks" runat="server"></asp:Label>%</h1>
    <p align="center" class="text-info"> &nbsp;</p>
    <p align="center" class="text-info"> &nbsp;</p>
    <p align="center" class="text-info"> &nbsp;</p>
    </p>
    <div class="container align-items-sm-center"  >
        
    <table align="center" class="table table-striped  table-bordered">
        <tr><td align="center" style="width: 119px" class="bg bg-info">SEMESTER 1 MARKS:</td>
        <td align="center" class="auto-style2 bg bg-info">
            <asp:Label ID="lblsem1" runat="server"></asp:Label>
            </td></tr>
         <tr><td align="center" style="width: 119px">SEMESTER 2 MARKS:</td>
        <td align="center">
            <asp:Label ID="lblsem2" runat="server"></asp:Label>
             </td></tr>
        <tr><td align="center" style="width: 119px" class="bg bg-info">SEMESTER 3 MARKS:</td>
        <td align="center" class="auto-style2 bg bg-info">
            <asp:Label ID="lblsem3" runat="server"></asp:Label>
            </td></tr>
        <tr><td align="center" style="width: 119px">SEMESTER 4 MARKS:</td>
        <td align="center">
            <asp:Label ID="lblsem4" runat="server"></asp:Label>
            </td></tr>
        <tr><td align="center" style="width: 119px" class="bg bg-info">SEMESTER 5 MARKS:</td>
        <td align="center"  class="auto-style2 bg bg-info">
            <asp:Label ID="lblsem5" runat="server"></asp:Label>
            </td></tr>
        <tr><td align="center" style="width: 119px">SEMESTER 6 MARKS:</td>
        <td align="center">
            <asp:Label ID="lblsem6" runat="server"></asp:Label>
            </td></tr>

    </table>
</div>

</asp:Content>
