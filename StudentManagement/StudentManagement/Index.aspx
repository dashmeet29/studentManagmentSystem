<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Case_Study_A.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            left: 574px;
            top: -4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
  
    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />
        <Items>
            <asp:MenuItem NavigateUrl="~/LoginPage.aspx" Text="Login" Value="Login"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/StudentRegsiter.aspx" Text="Register Student" Value="Register Student"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/FacultyRegister.aspx" Text="Register Faculty" Value="Register Faculty"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="162px" VerticalPadding="15px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
    <br />

                <br />
                <div class="container">
  <div class="jumbotron">
                <asp:Panel ID="Panel1" runat="server">
                    <p style="text-align:center" > 
                       
            This is a student Management System Portal.
        </p>
                    <p>You can login as admin and perform add update and delete opeations on Student, Faculty, Course as well as Genereate Results of students.</p>
                <p> Student can login and view his results as well as view some details of faculty</p>
                <p> Faculty can login to and see his details, also faculry can update result of student, in case no result is added Faculty gets alerted and can then add the result of student. the faculty can also update a student's ateendence.</p>
                </asp:Panel>
                <br />
                </div>
                    </div>>
          
          </div>
    
    </nav>

    </div>

</asp:Content>
