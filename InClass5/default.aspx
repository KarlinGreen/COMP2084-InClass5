<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="InClass5._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ASP.net Input Validation</h1>
    <h6>All fields are required!</h6>
    <fieldset>
        <label for="txtName" class="col-sm-3">Name: </label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="Required1" runat="server" ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPass" class="col-sm-3">Password: </label>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="Required2" runat="server" ErrorMessage="Required" ControlToValidate="txtPass" CssClass="label label-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="Compare1" runat="server" ErrorMessage="Password does not match" CssClass="label label-danger" ControlToValidate="txtPass" ControlToCompare="txtConfirm" Type="String" Operator="Equal" Display="Dynamic"></asp:CompareValidator>
    </fieldset>
    <fieldset>
        <label for="txtConfirm" class="col-sm-3">Confirm Password: </label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="Required3" runat="server" ErrorMessage="Required" ControlToValidate="txtConfirm" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtAge" class="col-sm-3">Age: </label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ID="Required4" runat="server" ErrorMessage="Required" ControlToValidate="txtAge" CssClass="label label-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter your AGE!!" ControlToValidate="txtAge" CssClass="label label-danger" MinimumValue="10" MaximumValue="100" Type="Integer" Display="Dynamic"></asp:RangeValidator>

    </fieldset>
    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" />

    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
