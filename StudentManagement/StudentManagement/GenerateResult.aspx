<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="GenerateResult.aspx.cs" Inherits="Case_Study_A.GenerateResult" %>
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
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="DeleteCollege" runat="server">
</asp:Content>
<asp:Content ID="Content14" ContentPlaceHolderID="GenerateResult" runat="server">
     <div class="container">
             
                <h1 align="center" class="text-primary" "text-center">  Generate Result </h1> 
            </div>  

    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>Student Id </label>
                        <asp:TextBox ID="txt_StudentId" runat="server" class="form-control" placeholder="Enter Student ID to be enter marks"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvStduentId" runat="server" ControlToValidate="txt_StudentId" ErrorMessage="Stduent Id is necessary"></asp:RequiredFieldValidator>
                    <br />
                     <label>Enter Marks</label>
                           <asp:TextBox ID="txt_marks" runat="server" class="form-control" placeholder="Enter Student marks"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvMarks" runat="server" ControlToValidate="txt_marks" ErrorMessage="Marks are requied"></asp:RequiredFieldValidator>
                   <br />
                     
                        <%--<button type="button" id="Generate_Marks" value="generateMarks" class="btn btn-default">Generate Result</button>
                    --%>
            <br />
            <div>                      <asp:Button ID="btn_GenerateResult" runat="server" Text="Enter Result" class="btn btn-success" OnClick="btn_GenerateResult_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>

                        <%--<button type="button" id="Generate_Marks" value="generateMarks" class="btn btn-default">Generate Result</button>
                    --%>&nbsp;&nbsp;
                          </div>
</div>
     </div>

</asp:Content>