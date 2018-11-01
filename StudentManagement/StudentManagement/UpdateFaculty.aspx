<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="UpdateFaculty.aspx.cs" Inherits="Case_Study_A.UpdateFaculty" %>
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
    <div>
           
        <div class="container">
             
                <h1 align="center" class="text-danger" "text-center">  Update Faculty </h1> 
         
   
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>Faculty Id</label>
                         <asp:TextBox ID="txt_FacId" runat="server" class="form-control" placeholder="Enter Faculty ID to be inserted"></asp:TextBox> 
                   

                          <asp:RequiredFieldValidator ID="rfvFacultyId" runat="server" ControlToValidate="txt_FacId" ErrorMessage="FacultyId is required" ForeColor="Red"></asp:RequiredFieldValidator>
                   

                          <br />
                          <br />
                   

                        <label>Faculty Salary</label>
                       <asp:TextBox ID="txt_FactSal" runat="server" class="form-control" placeholder="Enter Salary to be inserted" TextMode="Number"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txt_FactSal" ErrorMessage="Salary is required" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                    <br />
                    <div>

                        <%--<button type="button" id="Update_Faculty" value="Add" class="btn btn-warning">Update Faculty</button>
                    </di--%><asp:Button ID="btn_UpdateFaculty" runat="server" Text="Update Faculty" class="btn btn-danger" OnClick="btn_UpdateFaculty_Click" />

&nbsp;&nbsp;
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>

</div>
</div>
       
        
    
</div>
    </div>
               </div>  
        </div>
</asp:Content>
