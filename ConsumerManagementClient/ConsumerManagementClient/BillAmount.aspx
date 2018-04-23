﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillAmount.aspx.cs" Inherits="ConsumerManagementClient.BillAmount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search by bill amount</title>
</head>
<body>
    <div style="text-align:center;">
    <form id="form1" runat="server">
         <div>
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
        </div>
        <div style="float:right;margin-right:80px; width:200px;">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
        </div>
        <br />
        <br />
        <div style="padding-bottom: 50px;width:300px; margin:0 auto;" >
            <div style="float: left; padding-left:50px;">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Search" Value="Search">
                            <asp:MenuItem Text="ConsumerID" NavigateUrl="~/SearchByConsumerID.aspx" Value="ConsumerID"></asp:MenuItem>
                            <asp:MenuItem Text="Name/City" NavigateUrl="~/SearchByNameCity.aspx" Value="Name/City"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
            <div style="float: left;padding-left:50px;">
                <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Filter" Value="Filter">
                            <asp:MenuItem Text="DueDate" NavigateUrl="~/DueDate.aspx" Value="ConsumerID"></asp:MenuItem>
                            <asp:MenuItem Text="BillAmount" NavigateUrl="~/BillAmount.aspx" Value="BillAmount"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <br />
        <br />
        <div style="width:500px; margin:0 auto;">
            <asp:Table ID="Table1" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>
                    <asp:Label ID="Label1" runat="server" Text="Bill Amount : "></asp:Label>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell />
                <asp:TableHeaderCell>
                    <asp:DropDownList ID="searchByList" runat="server">
                     <asp:ListItem Text=">" Value="0" Selected="True" />
                        <asp:ListItem Text=">=" Value="1" />
                        <asp:ListItem Text="=" Value="2" />
                        <asp:ListItem Text="<" Value="3" />
                        <asp:ListItem Text="<=" Value="4" />
                    </asp:DropDownList>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell />
                <asp:TableHeaderCell>
                    <asp:TextBox ID="tbAmount" runat="server"></asp:TextBox>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell />
                <asp:TableHeaderCell>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
        </div>
        <div style="width:600px;padding-top:20px; padding-bottom:20px; margin:0 auto; text-align:left;">
            <asp:Label ID="lblError" runat="server" Text="" />
        </div>
        <div style="width:600px;margin:0 auto; padding-bottom:30px;">
        <asp:GridView ID="consumerlist" runat="server" OnRowDeleting="consumerlist_RowDeleting" OnRowEditing="consumerlist_RowEditing" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true">
        </asp:GridView>
        </div>
    </form>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="ConsumerForm.aspx" runat="server" OnUnload="HyperLink1_Unload">Add New Record</asp:HyperLink>
    </div>
</body>
</html>