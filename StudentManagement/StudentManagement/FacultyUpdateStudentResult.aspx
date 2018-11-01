<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyHome.master" AutoEventWireup="true" CodeBehind="FacultyUpdateStudentResult.aspx.cs" Inherits="Case_Study_A.FacultyUpdateStudentResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="WelcomeFacultyContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FacultyUpdateStudentResultContent" runat="server">
    <div class="container">
             
                <h1 align="center" class="text-primary" "text-center">  Add&nbsp; Result </h1>
                <p align="center" class="text-primary" "text-center">  &nbsp;</p>
                <p align="center" class="text-primary" "text-center">  

                    <div align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="S_Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="S_Id" HeaderText="S_Id" InsertVisible="False" ReadOnly="True" SortExpression="S_Id" />
                            <asp:BoundField DataField="S_Name" HeaderText="S_Name" SortExpression="S_Name" />
                            <asp:BoundField DataField="S_Address" HeaderText="S_Address" SortExpression="S_Address" />
                            <asp:BoundField DataField="S_Email" HeaderText="S_Email" SortExpression="S_Email" />
                            <asp:BoundField DataField="s_Age" HeaderText="s_Age" SortExpression="s_Age" />
                            <asp:BoundField DataField="S_ParentName" HeaderText="S_ParentName" SortExpression="S_ParentName" />
                            <asp:BoundField DataField="S_C_Id" HeaderText="S_C_Id" SortExpression="S_C_Id" />
                            <asp:BoundField DataField="S_Course_Id" HeaderText="S_Course_Id" SortExpression="S_Course_Id" />
                            <asp:HyperLinkField DataNavigateUrlFields="S_Id" DataNavigateUrlFormatString="AddResultLink.aspx?ID={0}" HeaderText="Add Result" NavigateUrl="~/AddResultLink" Text="Add Result" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaseStudyConnectionString %>" SelectCommand="SELECT [S_Id], [S_Name], [S_Address], [S_Email], [s_Age], [S_ParentName], [S_C_Id], [S_Course_Id] FROM [StudentDetails]"></asp:SqlDataSource>

                        </div>
                </p> 
            </div>  
   

       
</asp:Content>
