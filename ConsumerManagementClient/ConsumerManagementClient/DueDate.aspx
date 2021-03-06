﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DueDate.aspx.cs" Inherits="ConsumerManagementClient.DueDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search by  Due Date</title>
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
        <div style="width:300px;margin:0 auto;padding-bottom:20px;">
            <asp:RadioButtonList ID="duedateList" runat="server" EnableViewState="true" AutoPostBack="true" OnSelectedIndexChanged="duedateList_SelectedIndexChanged">
                <asp:ListItem Text="Defaulter" Value="0" />
                <asp:ListItem Text="Regular" Value="1" />
            </asp:RadioButtonList>
        </div>
        <div>
            <asp:Label ID="lblError" runat="server" Text="" />
        </div>
        <div style="width:600px;margin:0 auto; padding-bottom:30px;">
        <asp:GridView ID="consumerList" runat="server" OnRowDeleting="consumerList_RowDeleting" OnRowEditing="consumerList_RowEditing" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true">
        </asp:GridView>
        </div>
    </form>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="ConsumerForm.aspx" runat="server" OnUnload="HyperLink1_Unload">Add New Record</asp:HyperLink>
    </div>
</body>
</html>
