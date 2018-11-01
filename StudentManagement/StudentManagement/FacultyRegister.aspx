<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="FacultyRegister.aspx.cs" Inherits="Case_Study_A.FacultyRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <h1 style="text-align:center" class="text-success" "text-center">Register Here</h1>
</div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                </div>

                <div class="form-group col-md-4">

                     <label>Faculty Name</label>
                    <asp:TextBox ID="txt_FacultyName" runat="server" class="form-control" placeholder="Enter Name "></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txt_FacultyName" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                     <br />
                    <br />
                     <label>Faculty Email</label>
                    <asp:TextBox ID="txt_FacultyEmail" runat="server" class="form-control" placeholder="Enter Email "></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txt_FacultyEmail" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_FacultyEmail" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     <br />
                    <br />
                     <label>Faculty PhoneNo</label>
                    <asp:TextBox ID="txt_FacultyPhoneNo" runat="server" class="form-control" placeholder="Enter Faulty PhoneNo "></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ControlToValidate="txt_FacultyPhoneNo" ErrorMessage="PhoneNo is required"></asp:RequiredFieldValidator>
                     <br />
                     <br />
                    <br />
                     <label>Faculty Password</label>
                    <asp:TextBox ID="txt_FacultyPassword" runat="server" class="form-control" placeholder="Enter Password "></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txt_FacultyPassword" ErrorMessage="Password cannot be empty"></asp:RequiredFieldValidator>
                     <br />
                    <br />
                    <asp:Button ID="btn_Register" runat="server" Text="Register" OnClick="btn_Register_Click" />
                     &nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblMessage" runat="server"></asp:Label>
                
                </div> 


            </div>





        </div>



    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="StudentContent" runat="server">
</asp:Content>
