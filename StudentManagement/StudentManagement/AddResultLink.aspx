<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyHome.master" AutoEventWireup="true" CodeBehind="AddResultLink.aspx.cs" Inherits="Case_Study_A.AddResultLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FacultyUpdateStudentResultContent" runat="server">
    <div class="container">
             
                <h1 align="center" class="text-success" "text-center">  Add Result of Student</h1> 
          
  
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>SEMESTER 1</label>
                    <asp:TextBox ID="txt_Sem1" runat="server" class="form-control" placeholder="Enter marks"></asp:TextBox> 
                          <br />
                    <br />
                     <label>SEMESTER 2</label>
                        <asp:TextBox ID="txt_Sem2" runat="server" class="form-control" placeholder="Enter marks"></asp:TextBox> 

                          <br /><br />
                    
                        <label>SEMESTER 3</label>
                    <asp:TextBox ID="txt_Sem3" runat="server" class="form-control" placeholder="Enter Marks"></asp:TextBox> 

                          <br />

                    <br />
                     <label>SEMESTER 4</label>
                     <asp:TextBox ID="txt_Sem4" runat="server" class="form-control" placeholder="Enter Marks"></asp:TextBox> 
                        <br />

                    <br />
                     <label>SEMESTER 5</label>
                     <asp:TextBox ID="txt_Sem5" runat="server" class="form-control" placeholder="Enter Marks"></asp:TextBox> 
                        <br />

                    <br />
                     <label>SEMESTER 6</label>
                     <asp:TextBox ID="txt_Sem6" runat="server" class="form-control" placeholder="Enter Marks"></asp:TextBox> 
                        <br />
                    
                    

<%--                               <label>College id</label>
                    <asp:TextBox ID="txt_collegeId" runat="server" class="form-control" placeholder="Enter Course Duration to be inserted"></asp:TextBox> --%>

                          <br />
                          <asp:Button ID="btn_AddResult" runat="server" Text="Add Result" class="btn btn-success" OnClick="btn_AddResult_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <br />
                    <div>

                        <%--<button type="button" id="Add_cOURSE" value="Add" class="btn btn-success">Add Course</button>--%>
                         
                    </div>
</div>
</div>
        </div>

    </div>
      

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FacultyUpdateStudentAttendenceContent" runat="server">
</asp:Content>
