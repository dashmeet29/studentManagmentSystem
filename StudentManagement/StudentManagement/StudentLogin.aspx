<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="Case_Study_A.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div class="container">
            <div class="jumbotron">
                <h1 align="center" class="text-info"> Student Login </h1> 
            </div>  
        </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">

                    <label id="lblStudentId">Student Login Id</label>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="LoginId" Class="form-control" runat="server" placeholder="Enter Valid Id"></asp:TextBox>
                      </div>

                        <label id="lbl_Studentpassword">Password:</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox ID="txt_studpass" Class="form-control" runat="server" placeholder="Enter Valid Password" TextMode="Password"></asp:TextBox>
                            </div><br />
                    <%-- <a href="WelcomStudent.aspx" class="btn btn-info" type="button">Login</a>--%>
                    <asp:Button ID="btn_StudentLogin" runat="server" Text="LOGIN"  class="btn btn-info" OnClick="btn_StudentLogin_Click"/>

                   
                &nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>

                   
                </div>
        </div>
    </div>
   
</div>
</asp:Content>
