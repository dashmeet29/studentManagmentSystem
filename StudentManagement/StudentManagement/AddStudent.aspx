<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Case_Study_A.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AddStudentContent" runat="server">

    <div class="container">

             

                <h1 class="text-info" style="text-align:center">   Add Student </h1> 

            </div>  

    <p>



        <div align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="S_Id" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="S_Id" HeaderText="S_Id" InsertVisible="False" ReadOnly="True" SortExpression="S_Id" />
                <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                <asp:BoundField DataField="S_Address" HeaderText="S_Address" SortExpression="S_Address" />
                <asp:BoundField DataField="S_Email" HeaderText="S_Email" SortExpression="S_Email" />
                <asp:BoundField DataField="s_Age" HeaderText="s_Age" SortExpression="s_Age" />
                <asp:BoundField DataField="S_PhoneNo" HeaderText="S_PhoneNo" SortExpression="S_PhoneNo" />
                <asp:BoundField DataField="S_ParentPhone" HeaderText="S_ParentPhone" SortExpression="S_ParentPhone" />
                <asp:BoundField DataField="S_Course_Id" HeaderText="S_Course_Id" SortExpression="S_Course_Id" />
                <asp:BoundField DataField="S_C_Id" HeaderText="S_C_Id" SortExpression="S_C_Id" />
                <asp:BoundField DataField="S_Attendence" HeaderText="S_Attendence" SortExpression="S_Attendence" />
                <asp:HyperLinkField DataNavigateUrlFields="S_Id" DataNavigateUrlFormatString="AddStudentLink.aspx?ID={0}" HeaderText="Add Details" NavigateUrl="~/AddStudentLink.aspx" Text="Add_Details" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [S_Id], [S_Name], [S_Address], [S_Email], [s_Age], [S_PhoneNo], [S_ParentPhone], [S_Course_Id], [S_C_Id], [S_Attendence] FROM [StudentDetails]"></asp:SqlDataSource>


        <br />

<p>

       </div>

</p>













</asp:Content>