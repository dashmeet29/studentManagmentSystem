<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="UpdateCollege.aspx.cs" Inherits="Case_Study_A.UpdateCollege" %>
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

           
        <div class="container">
             
                <h1 align="center" class="text-primary" "text-center">  Update College </h1> 
            </div>  
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>College Id</label>
                    <asp:TextBox ID="txt_CollegeId" runat="server" type="number" class="form-control" name="CollegeId"></asp:TextBox>  
                          <asp:RequiredFieldValidator ID="rfvCollegeId" runat="server" ErrorMessage="CollegeID is required" ForeColor="Red" ControlToValidate="txt_CollegeId"></asp:RequiredFieldValidator>
                          <br />
                    <br />

                        <label>College Events</label>
                    <asp:TextBox ID="txt_CollegeEvents" runat="server" type="number" class="form-control" name="CollegeEvents"></asp:TextBox>  
                      
                         <asp:RequiredFieldValidator ID="rfvEvents" runat="server" ErrorMessage="Events are necessary " ForeColor="Red" ControlToValidate="txt_CollegeEvents"></asp:RequiredFieldValidator>
                          <br />
                    <br />
                    <div>

                    
                            <label>College Placements</label>
                        <asp:TextBox ID="txt_CollegePlacements" runat="server" type="number" class="form-control" name="CollegePlacements"></asp:TextBox>  
                    
                            <asp:RequiredFieldValidator ID="rfvPlacements" runat="server" ControlToValidate="txt_CollegePlacements" ErrorMessage="Placements are necessary" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                        <br />
&nbsp;<br />
                    <div>

                        <%--<button type="button" id="Update_College" value="Update" class="btn btn-default">Update College</button>
         --%>
                        <asp:Button ID="btn_UpdateCollege" runat="server" Text="Update College" class="btn btn-primary"/>
                        </div>
</div>
</div>
        </div>
</div>
</asp:Content>

