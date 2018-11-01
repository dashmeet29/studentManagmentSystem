<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="StudentRegsiter.aspx.cs" Inherits="Case_Study_A.StudentRegsiter" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="StudentContent" runat="server">
    <div>
    <div class="container">

        <h1 style="text-align:center" class="text-success" "text-center">Register Here</h1>

    </div>
   </div>


    <div class="container">
        <div class="row">
            <div class="col-md-4">
                </div>
                <div class="form-group col-md-4">
                                    
                              <label>Student Name</label>
                    <asp:TextBox ID="txt_studentName" runat="server" class="form-control" placeholder="Enter Name "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txt_studentName" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                      <label>Student Age</label>
                    <asp:TextBox ID="txt_StudentAge" runat="server" class="form-control" placeholder="Enter Age "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStudentAge" runat="server" ControlToValidate="txt_StudentAge" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                      <label>Student Email</label>
                    <asp:TextBox ID="txt_StudentEmail" runat="server" class="form-control" placeholder="Enter Email "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStudentEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="txt_StudentEmail"></asp:RequiredFieldValidator>
                    <br />
                              <asp:RegularExpressionValidator ID="StudEmailvalidate" runat="server" ControlToValidate="txt_StudentEmail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              <br />
                    <br />
                      <label>Student Address</label>
                    <asp:TextBox ID="txt_Address" runat="server" class="form-control" placeholder="Enter Address "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txt_Address" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                      <label>Student PhnNo</label>
                    <asp:TextBox ID="txt_StudentPhoneNo" runat="server" class="form-control" placeholder="Enter StudentPhoneNo " TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStudPhoneNo" runat="server" ControlToValidate="txt_StudentPhoneNo" ErrorMessage="StudentPhoneNo is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                              <asp:RegularExpressionValidator ID="studentPhoneValidation" runat="server" ControlToValidate="txt_StudentPhoneNo" ErrorMessage="Enter Valid Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                              <br />
                    <br />
                      <label>Parent Name</label>
                    <asp:TextBox ID="txt_StudParentName" runat="server" class="form-control" placeholder="Enter ParentName "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvParentName" runat="server" ControlToValidate="txt_StudParentName" ErrorMessage="ParentName is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                      <label>Parent Email</label>
                    <asp:TextBox ID="txt_StudParentEmail" runat="server" class="form-control" placeholder="Enter ParentEmail"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvParentEmail" runat="server" ControlToValidate="txt_StudParentEmail" ErrorMessage="ParentEMail is necessary" ForeColor="Red"></asp:RequiredFieldValidator>
                              <br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_StudParentEmail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              <br />
                    <br />
                    <br />
                      <label>Parent PhoneNo</label>
                    <asp:TextBox ID="txt_ParentPhoneNo" runat="server" class="form-control" placeholder="Enter ParentPhoneNo "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvParentPhone" runat="server" ControlToValidate="txt_ParentPhoneNo" ErrorMessage="ParentPhoneNo is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                              <br />
                    <br />
                      <label>Password</label>
                    <asp:TextBox ID="txt_Password" runat="server" class="form-control" placeholder="Enter Pasword "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txt_Password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btn_StudentRegister" runat="server" Text="Register" Class="btn btn-primary" OnClick="btn_StudentRegister_Click" />
                     &nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <br />
                  </div>
                  </div>
              </div>
          </div>
    </div>





</asp:Content>
