<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRecord.aspx.cs" Inherits="EmployeeDirectory.TabularVersion.NewRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .style1
        {
            width: 120px;
            width: auto;
            font-family: "Verdana";
            font-size: 14px;
            font-style: normal;
            text-decoration: none;
            text-align: justify;
            padding-top: 10px;
            padding-right: 10px;
            padding-bottom: 0px;
            padding-left: 10px;
            margin: auto;
            margin-top: 0px;
            margin-left: 10px;
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
            text-align: justify;
            margin-top: 0px;
            margin-left: 10px;
            margin-right: auto;
            margin-bottom: auto;
        }
        .style3
        {
            margin-left: 10px;
            background-color: #CCCCCC;
            padding: 3px;
        }
        .tdstyle
        {
            margin: 2px; 
            padding: 5px;
            background-color: Light Highlight;
        }
        .style4
        {
            margin: 2px;
            padding: 5px;
            background-color: Light Highlight;
            font-weight: bold;
        }
        .style5
        {
            margin: 2px;
            padding: 5px;
            background-color: Light Highlight;
            font-weight: normal;
            color: #000000;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
<div style="text-align: center; height: 71px;">
    
            <h1>Directory Viewer - Tabular Style</h1></div>
    <div style="width: auto">
      <h3 style="background: #1C5E55; color: #FFFFFF; height: 26px;" class="style1">
            Employee Directory</h3>
    </div>
    <div class="style3">
        <strong><asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/TabularVersion/MainGrid.aspx"
            style="font-family: Verdana; font-size: 13px">Return to Listing</asp:HyperLink>
        </strong>
    
    </div>
    <div class="style1">
        <strong><span>Create New Entry</span><br />
        </strong>&nbsp;<table id="table2" class="style4">
            <tr>
                <td class="style5">
                    First Name: 
                </td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveFNameTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    <asp:Label ID="FNameerrLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="alt">
                <td class="style5">
                    Last Name:
                </td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveLNameTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    <asp:Label ID="LNameerrLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="alt">
                <td class="style5">
                    Job Title</td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveJobTitleTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Office Phone:
                </td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveOfficePhoneTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    &nbsp;</td>
            </tr>
            <tr class="alt">
                <td class="style5">
                    Cell Phone:
                </td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveCellPhoneTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Email Address:
                </td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveEmailTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Location:</td>
                <td class="tdstyle">
                    <asp:TextBox ID="saveLocTB" runat="server"></asp:TextBox>
                </td>
                <td class="tdstyle">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="newsaveBtn" runat="server" BackColor="#FF9900" 
            BorderWidth="2px" OnClick="saveBtn_Click" Text="Save" 
            ValidationGroup="musthaveentry" />
        &nbsp;<asp:Label ID="errorLbl0" runat="server"></asp:Label>
    &nbsp;
        <br />
        <br />
        </div>
        <div style="width: auto">
      <h3 style="background: #1C5E55; color: #FFFFFF;" class="style2">
            Employee Directory v1.0</h3>
    </div>
    </form>
</body>
</html>
