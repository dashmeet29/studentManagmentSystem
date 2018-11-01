<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyHome.master" AutoEventWireup="true" CodeBehind="FacultyUpdateAttendence.aspx.cs" Inherits="Case_Study_A.FacultyUpdateAttendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeFacultyContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FacultyUpdateStudentResultContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FacultyUpdateStudentAttendenceContent" runat="server">
    <div class="container">
             
                <h1 align="center" class="text-primary" "text-center">  Update Attendence </h1> 
            </div>  
   
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>Student Id </label>
                        <asp:TextBox ID="txt_StudentId" runat="server" class="form-control" placeholder="Enter Student ID to enter marks"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvStudentId" runat="server" ControlToValidate="txt_StudentId" ErrorMessage="Student Id is required"></asp:RequiredFieldValidator>
                          <br />
                    <br />
                    <asp:Button ID="ShowStudentDetails" runat="server" Text="Search Student" class="btn btn-success" OnClick="ShowStudentDetails_Click"  />

                    &nbsp;&nbsp;<br />
                          <br />
                          <asp:TextBox ID="txt_Attendence" runat="server" class="form-control" placeholder="Enter Student Attendence" Visible="False"></asp:TextBox> 
                          <asp:RequiredFieldValidator ID="rfvAattendence" runat="server" ControlToValidate="txt_Attendence" ErrorMessage="Enter Attendence"></asp:RequiredFieldValidator>
                          <br />
                   <br />
                     
                        <%--<button type="button" id="Generate_Marks" value="generateMarks" class="btn btn-default">Generate Result</button>
                    --%>
                                         <asp:Button ID="btn_UpdateAttendence" runat="server" Text="Update Attendence" class="btn btn-success" OnClick="btn_UpdateAttendence_Click" Visible="False"  />
                     &nbsp<asp:Label ID="lblMessage" runat="server"></asp:Label>

                          <br />
                          <br />
                    </div>
                        </div>
</div>
    <div align="center">
                          <asp:GridView ID="GridView1" class="text-md-left" runat="server" AutoGenerateColumns="False" DataKeyNames="S_Id" DataSourceID="SqlDataSource1" Visible="False">
                              <Columns>
                                  <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" SortExpression="S_Id" />
                                  <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                                  <asp:BoundField DataField="S_Email" HeaderText="S_Email" SortExpression="S_Email" />
                                  <asp:BoundField DataField="S_Attendence" HeaderText="S_Attendence" SortExpression="S_Attendence" />
                                  <asp:BoundField DataField="S_ParentName" HeaderText="S_ParentName" SortExpression="S_ParentName" />
                                  <asp:BoundField DataField="S_Course_Id" HeaderText="S_Course_Id" SortExpression="S_Course_Id" />
                                  <asp:BoundField DataField="S_C_Id" HeaderText="S_C_Id" SortExpression="S_C_Id" />
                                  <asp:BoundField DataField="S_ParentPhone" HeaderText="S_ParentPhone" SortExpression="S_ParentPhone" />
                              </Columns>
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [S_Id], [S_Name], [S_Email], [S_Attendence], [S_ParentName], [S_Course_Id], [S_C_Id], [S_ParentPhone] FROM [StudentDetails] WHERE ([S_Id] = @S_Id)">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="txt_StudentId" Name="S_Id" PropertyName="Text" Type="Int32" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <br />
                          <br />
        </div>

</asp:Content>
