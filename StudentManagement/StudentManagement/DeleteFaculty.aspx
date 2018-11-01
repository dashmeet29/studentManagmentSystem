<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="DeleteFaculty.aspx.cs" Inherits="Case_Study_A.DeleteFaculty" %>
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
    <div>
           
        <div class="container">
             
                <h1 align="center" class="text-danger" "text-center">  Delete Faculty </h1> 
        

    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>Faculty Id to delete</label>
                        <asp:TextBox ID="txt_DelFactId" runat="server" class="form-control" placeholder="Enter Faculty ID to be Deleted"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvFacultyId" runat="server" ControlToValidate="txt_DelFactId" ErrorMessage="Faculty Id is required"></asp:RequiredFieldValidator>
                          <br />
                    <br />
                    

                        <%--<button type="button" id="Delete_Faculty" value="Delete" class="btn btn-warning">Delete Faculty</button>
                   --%>
                          <asp:Button ID="btn_DeleteFaculty" runat="server" Text="Delete Faculty" class="btn btn-danger" OnClick="btn_DeleteFaculty_Click"/>
            &nbsp;&nbsp;
                          <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </div>
</div>
</div>
        </div>
            </div>  
   

</asp:Content>
