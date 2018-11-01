<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Case_Study_A.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="jumbotron">
                <h1   align="center" class="text-info"> Login </h1> 
            </div>  
        </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">

                    <label id="lblStudentId">Enter Login Id</label>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginId" ErrorMessage="Id is Required" ForeColor="#6699FF"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="LoginId" Class="form-control" runat="server" placeholder="Enter Valid Id"></asp:TextBox>
                      </div>

                        <label id="lbl_password">Password:</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password is required" ForeColor="#3399FF"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_pass" Class="form-control" runat="server" placeholder="Enter Valid Password" TextMode="Password"></asp:TextBox>
                            </div>
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Admin" GroupName="usertype" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Student" GroupName="usertype" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Faculty" GroupName="usertype" />
                    <br />
                    <br />
                    <br />
                    <%-- <a href="WelcomStudent.aspx" class="btn btn-info" type="button">Login</a>--%>
                    <asp:Button ID="btn_Login" runat="server" Text="LOGIN"  class="btn btn-info" OnClick="btn_Login_Click"/>

                   
                &nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>

                   
                </div>
        </div>
    </div>
   
</div>
</asp:Content>
