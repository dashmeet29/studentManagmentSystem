<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="DeleteStudent.aspx.cs" Inherits="Case_Study_A.DeleteStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UpdateStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DeleteStudentContent" runat="server">
        <div>
           <br />
        <div class="container">
            
                <h1 align="center" class="text-info" "text-center">  Delete Student </h1> 
         
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     <label>Student Id</label>
                        <asp:TextBox ID="txt_StudentId" runat="server" class="form-control" placeholder="Enter Student ID to be Deleted"></asp:TextBox> 
                   
                     <asp:RequiredFieldValidator ID="rfvStudentId" runat="server" ControlToValidate="txt_StudentId" ErrorMessage="StudentId is Required "></asp:RequiredFieldValidator>
                     <br />
                   
                    <br />
                      <div class="input-group">
                          </div>
                    <br />
                    <div>
                        <asp:Button ID="btn_DeleteStudent" runat="server" Text="Delete Student" class="btn btn-primary" OnClick="btn_DeleteStudent_Click" />
                    &nbsp;
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>
</div>
</div>
        </div>
               </div>  
        </div>
   
</asp:Content>