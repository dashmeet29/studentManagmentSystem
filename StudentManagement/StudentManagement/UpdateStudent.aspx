<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="Case_Study_A.UpdateStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeAdmin" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="UpdateStudentContent" runat="server">
 
           
        <div class="container">
                <h1 align="center" class="text-info" "text-center">  Update Student </h1> 
                    <div class="row">
            <div class="col-md-4"></div>
            <%-- <form action="/action_page.ph">--%>
                <div class="form-group col-md-4">
                     
                          <label>Enter Student Id </label>
                         <asp:TextBox ID="txtEnterStudId" runat="server" class="form-control" placeholder="Enter Stduent ID to be inserted"></asp:TextBox> 
                   

                          <asp:RequiredFieldValidator ID="rfvStudentId" runat="server" ControlToValidate="txtEnterStudId" ErrorMessage="StudentId is required" ForeColor="#0099FF"></asp:RequiredFieldValidator>
                   

                          <br />
                   

                          <br />

                     <asp:Button ID="UpdateStudentDetails" runat="server" Text="Show Student Details" class="btn btn-primary" OnClick="UpdateStudentDetails_Click"  />
&nbsp;&nbsp;&nbsp;

                   

                          <asp:Label ID="lblshowDetails" runat="server"></asp:Label>
                          <br />
                          <br />
&nbsp;<label><br />
                          Student Phone Number<br />
                          </label>
                       &nbsp;<br />
                          <br />
                          <asp:TextBox ID="txtEnterStudPhNumber" runat="server" class="form-control" placeholder="Enter PhoneNo to be inserted"></asp:TextBox> 
                          <br />
                    <br />
                    <div>

                        
                        <label>Student Email</label>
                       <asp:TextBox ID="txtEnterStudEmail" runat="server" class="form-control" placeholder="Enter Email to be inserted"></asp:TextBox> 
                    <br />
                    <div>

                        
                        &nbsp;<br />
                    <div>

                        
                        <label>Parent Phone Number</label>
                       <asp:TextBox ID="txtEnterParentPhNum" runat="server" class="form-control" placeholder="Enter Parent PhoneNo to be inserted"></asp:TextBox> 
                        <br />
                    <br />
                    <div>

                              <label>Parent Email</label>
                       <asp:TextBox ID="txtEnterParentEmail" runat="server" class="form-control" placeholder="Enter ParentEmail to be inserted"></asp:TextBox> 
                              <br />
                    <br />
                    <div>

                              <label>Student Attendence</label>
                       <asp:TextBox ID="txtAttendence" runat="server" class="form-control" placeholder="Enter attendence to be inserted" TextMode="Number"></asp:TextBox> 
                              <br />
                    <br />
                    <div>


                       
                    <asp:Button ID="btn_UpdateStudent" runat="server" Text="Update Student" class="btn btn-primary" OnClick="btn_UpdateStudent_Click" />
&nbsp;&nbsp;&nbsp;



<asp:Label ID="lblMessage" runat="server"></asp:Label>




</div>
</div>
       
        
    
</div>
    </div>




    <br />

     </div>
</div>
</div>
     </div>
            </div>  
       

    <div class="container">

</div>
</asp:Content>
