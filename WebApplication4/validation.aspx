<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="WebApplication4.validation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #customer
        {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        
        #customer td, #customer th
        {
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        #customer tr:nth-child(even)
        {
            background-color: #f2f2f2;
        }
        
        #customer tr:hover
        {
            background-color: #ddd;
        }
        
        #customer th
        {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table>
        <tr>
            <th>
                Username
            </th>
            <td>
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validate" runat="server" ControlToValidate="username" ErrorMessage="wrong input" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <th>
                Password
            </th>
            <td>
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="wrong input" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
             <td>
                <asp:Button id="save" runat="server" Text="Submit"/>  
             </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Countries :
            <asp:DropDownList ID="ddlcountry" runat="server" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"
                AutoPostBack="true" AppendDataBoundItems="true">
            </asp:DropDownList>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlcountry" />
        </Triggers>
    </asp:UpdatePanel>
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            States :
            <asp:DropDownList ID="ddlstate" runat="server">
            </asp:DropDownList>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlstate" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>
