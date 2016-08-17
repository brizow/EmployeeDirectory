<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainGrid.aspx.cs" Inherits="EmployeeDirectory.TabularVersion.MainGrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Directory</title>
    <style>
        .style1
        {
            width: 120px;
            text-align: right;
            width: auto;
            font-family: "Arial";
            font-size: 14px;
            font-style: normal;
            text-decoration: none;
            text-align: justify;
            padding-top: 10px;
            padding-right: 10px;
            padding-bottom: 0px;
            padding-left: 10px;
            margin-top: 0px;
            margin-left: 10px;
            background-color: Gray;
            margin-right: auto;
            margin-bottom: auto;
        }
        .style2
        {
            width: 120px;
            text-align: right;
            padding: 10px;
            width: auto;
            font-family: "Verdana";
            font-size: x-small;
            font-style: normal;
            text-decoration: none;
            text-align: center;
            margin-top: 0px;
            margin-left: 10px;
            margin-right: auto;
            margin-bottom: auto;
        }
        .style3
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; height: 71px;">
        <h1>
            Directory Viewer - Tabular Style</h1>
    </div>
    <div style="width: auto">
        <h3 style="background: #1C5E55; color: #FFFFFF; height: 26px;" class="style1">
            Employee Directory</h3>
    </div>
    <div class="style1">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TabularVersion/NewRecord.aspx">New Record</asp:HyperLink>
        &nbsp; |&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server">Run Report</asp:HyperLink>
        <div class="style2">
            <span class="style3">Find an Employee:</span>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            CellPadding="4" DataKeyNames="ID" DataSourceID="EntityDataSource1" EmptyDataText="There are no data records to display."
            ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" PageSize="50"
            Style="text-align: center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                            Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                            OnClientClick="return confirm('Are you sure you want to delete?');" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"
                    Visible="False" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="JobTitle" HeaderText="Job Title" SortExpression="JobTitle">
                    <HeaderStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                    <HeaderStyle Width="250px" />
                </asp:BoundField>
                <asp:BoundField DataField="OfficePhone" HeaderText="Office Phone" SortExpression="OfficePhone">
                    <HeaderStyle Width="250px" />
                </asp:BoundField>
                <asp:BoundField DataField="MobilePhone" HeaderText="Mobile Phone" SortExpression="MobilePhone">
                    <HeaderStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=WebApplicationsEntities"
            DefaultContainerName="WebApplicationsEntities" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="My_Employee_Directory"
            AutoGenerateWhereClause="True" Where="">
            <WhereParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="FName" PropertyName="Text" Type="String" />
            </WhereParameters>
        </asp:EntityDataSource>
    </div>
    <div style="width: auto">
        <h3 style="background: #1C5E55; color: #FFFFFF;" class="style2">
            Employee Directory v1.0</h3>
    </div>
    </form>
</body>
</html>
