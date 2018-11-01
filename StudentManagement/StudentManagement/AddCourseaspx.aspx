<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="AddCourseaspx.aspx.cs" Inherits="Case_Study_A.AddCourseaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UpdateStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DeleteStudentContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="AddCourseContent" runat="server">
            <div>
           
        <div class="container">
             
                <h1 align="center" class="text-success" "text-center">  Add Course </h1>
        
   
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%--                               <label>College id</label>
                    <asp:TextBox ID="txt_collegeId" runat="server" class="form-control" placeholder="Enter Course Duration to be inserted"></asp:TextBox> --%>
                <div class="form-group col-md-4">
                     
                          <label>Course Id</label>
                    <asp:TextBox ID="txt_CourseId" runat="server" class="form-control" placeholder="Enter Course ID to be inserted"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvCourseId" runat="server" ControlToValidate="txt_CourseId" ErrorMessage="Course Id is required "></asp:RequiredFieldValidator>
                          <br />
                    <br />
                     <label>Course Name</label>
                        <asp:TextBox ID="txt_Course_Name" runat="server" class="form-control" placeholder="Enter Course Name to be inserted"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvCourseName" runat="server" ControlToValidate="txt_Course_Name" ErrorMessage="CourseName is required "></asp:RequiredFieldValidator>
                          <br />
                     <br />
                    
                        <label>College Id </label>

                          <br />
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="C_Id" DataValueField="C_Id" OnSelectedIndexChanged="Page_Load">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [Course_Id], [Course_Name], [C_Id], [Couse_Duration], [Course_Fees] FROM [CourseDetails]"></asp:SqlDataSource>

                          <asp:RequiredFieldValidator ID="rfvCollegeId" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select CollegeId"></asp:RequiredFieldValidator>

                          <br /><br />
                    
                        <label>Course Duration</label>
                    <asp:TextBox ID="txt_CourseDuration" runat="server" class="form-control" placeholder="Enter Course Duration to be inserted"></asp:TextBox> 

                          <asp:RequiredFieldValidator ID="rfvCourseDuration" runat="server" ControlToValidate="txt_CourseDuration" ErrorMessage="Course Duration is to be provided"></asp:RequiredFieldValidator>
                          <br />

                    <br />
                     <label>Course Fees</label>
                     <asp:TextBox ID="txt_CourseFees" runat="server" class="form-control" placeholder="Enter Course Fees to be inserted"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvCourseFees" runat="server" ControlToValidate="txt_CourseFees" ErrorMessage="CourseFees is to be entered"></asp:RequiredFieldValidator>
                        <br />
                    
                    

<%--<button type="button" id="Add_cOURSE" value="Add" class="btn btn-success">Add Course</button>--%>

                          <br />
                          <asp:Button ID="btn_AddCourse" runat="server" Text="Add Course" class="btn btn-success" OnClick="btn_AddCourse_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_ViewAllCourse" runat="server" Text="Show Course" class="btn btn-success" OnClick="btn_ViewAllCourse_Click" CausesValidation="False" />
                    &nbsp;
                          <asp:Label ID="lblMessage" runat="server"></asp:Label>
                          <br />
                          <br />
                          <br />
                          <br />
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Course_Id" DataSourceID="SqlDataSource1" ForeColor="Black" Visible="False">
                              <Columns>
                                  <asp:BoundField DataField="Course_Id" HeaderText="Course_Id" ReadOnly="True" SortExpression="Course_Id" />
                                  <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                                  <asp:BoundField DataField="C_Id" HeaderText="C_Id" SortExpression="C_Id" />
                                  <asp:BoundField DataField="Couse_Duration" HeaderText="Couse_Duration" SortExpression="Couse_Duration" />
                                  <asp:BoundField DataField="Course_Fees" HeaderText="Course_Fees" SortExpression="Course_Fees" />
                              </Columns>
                              <FooterStyle BackColor="#CCCCCC" />
                              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                              <RowStyle BackColor="White" />
                              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F1F1F1" />
                              <SortedAscendingHeaderStyle BackColor="#808080" />
                              <SortedDescendingCellStyle BackColor="#CAC9C9" />
                              <SortedDescendingHeaderStyle BackColor="#383838" />
                          </asp:GridView>
                    <br />
                    <div>

                        <%--<button type="button" id="Add_cOURSE" value="Add" class="btn btn-success">Add Course</button>--%>
                         
                    </div>
</div>
</div>
        </div>
                </div>  
        </div>
</asp:Content>
