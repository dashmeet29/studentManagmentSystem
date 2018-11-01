<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="UpdateCourse.aspx.cs" Inherits="Case_Study_A.UpdateCourse" %>
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
      <div>
           
        <div class="container">
             
                <h1 align="center" class="text-success" "text-center">  Update Course </h1> 
          
    
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <button type="button" id="Update_Course" value="Update" class="btn btn-success">Update Course</button>
                    --%>
                <div class="form-group col-md-4">
                     
                          <label>Course Id</label>
                       <asp:TextBox ID="txt_CourseId" runat="server" class="form-control" placeholder="Enter Course ID to be inserted"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvCourseId" runat="server" ControlToValidate="txt_CourseId" ErrorMessage="Id is required" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                    <br />

                      <asp:Button ID="ViewCourseExistingDetails" runat="server" Text="View Existing Details" class="btn btn-success" OnClick="ViewCourseExistingDetails_Click" />
            &nbsp;&nbsp;
                          <asp:Label ID="lblshowexistingDetails" runat="server"></asp:Label>
           
                          <br />
                          <br />
           
                     <label>Course Name</label>
                         <asp:TextBox ID="txt_Course_Name" runat="server" class="form-control" placeholder="Enter Course Name to be inserted"></asp:TextBox> 
                     <br />
                     <label>Course Fees</label>
                        <asp:TextBox ID="txt_CourseFees" runat="server" class="form-control" placeholder="Enter Course Fees to be inserted"></asp:TextBox> 
                          <br />
                    <br />

                       <%-- <button type="button" id="Update_Course" value="Update" class="btn btn-success">Update Course</button>
                    --%>
                          <asp:Button ID="btn_UpdateCourse" runat="server" Text="Update Course" class="btn btn-success" OnClick="btn_UpdateCourse_Click" />
            &nbsp;&nbsp;
                          <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </div>
</div>
</div>
        </div>
            </div>  
        

</asp:Content>
