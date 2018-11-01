<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHomeMaster.master" AutoEventWireup="true" CodeBehind="StudentViewFaculty.aspx.cs" Inherits="Case_Study_A.StudentViewFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeStudentDetail" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewResultContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ViewFacultyContent" runat="server">
    <div class="container">
             
                <h1 align="center" class="text-success" "text-center">  Faculty Details </h1> 
           
    
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">


                     <label>Enter Faculty Id to search</label>
                       <asp:TextBox ID="txt_enterFaculty" Class="form-control" runat="server" placeholder="Enter Valid Id"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvFacultyId" runat="server" ControlToValidate="txt_enterFaculty" ErrorMessage="Faculty Id is necessary" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
                     <br />
&nbsp;<asp:Button ID="btn_Search" runat="server" Text="Search Faculty" class="btn btn-success" OnClick="btn_Search_Click"/>
                    &nbsp;
                     <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    <br />
                     <%-- <button type="button" id="Search" value="Search" class="btn btn-success">Search Faculty</button>
                    --%>  <table class="table table-striped" id="lbl_showId" >
                          <tr><td style="width: 83px">Faculty Name </td>
                          <td><asp:Label ID="lblFacultyName" runat="server" Text="Label"></asp:Label></td></tr>
                        <tr><td style="width: 83px; height: 57px;">Faculty Number :</td>
                           <td style="height: 57px"> <asp:Label ID="lblFacultyNumber" runat="server" Text="Label"></asp:Label></td></tr><br />
                          <tr><td style="width: 83px">Faculty Email Id :</td>
                             <td> <asp:Label ID="lblFacultyEmail" runat="server" Text="Label"></asp:Label></td></tr><br />
                      </table>

                        
                    </div>
</div>
</div>
         </div>  
        

</asp:Content>