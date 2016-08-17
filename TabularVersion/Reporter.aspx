<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporter.aspx.cs" Inherits="EmployeeDirectory.TabularVersion.Reporter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
            DataSourceID="EntityDataSource1" style="text-align: center">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OfficePhoneLabel" runat="server" 
                            Text='<%# Eval("OfficePhone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MobilePhoneLabel" runat="server" 
                            Text='<%# Eval("MobilePhone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OfficePhoneLabel" runat="server" 
                            Text='<%# Eval("OfficePhone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MobilePhoneLabel" runat="server" 
                            Text='<%# Eval("MobilePhone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        FName</th>
                                    <th runat="server">
                                        LName</th>
                                    <th runat="server">
                                        Email</th>
                                    <th runat="server">
                                        JobTitle</th>
                                    <th runat="server">
                                        OfficePhone</th>
                                    <th runat="server">
                                        MobilePhone</th>
                                    <th runat="server">
                                        Location</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=WebApplicationsEntities" 
            DefaultContainerName="WebApplicationsEntities" EnableDelete="True" 
            EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="BW_Employee_Directory">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
