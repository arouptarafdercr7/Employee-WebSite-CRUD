<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterUser.aspx.cs" Inherits="RegisterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:literal runat="server" id="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:validationsummary runat="server" cssclass="text-danger" />
        <div class="form-group">
            <asp:label runat="server" associatedcontrolid="txtUserName" cssclass="col-md-2 control-label">User name</asp:label>
            <div class="col-md-10">
                <asp:textbox runat="server" id="txtUserName" cssclass="form-control" />
                <asp:requiredfieldvalidator runat="server" controltovalidate="txtUserName"
                    cssclass="text-danger" errormessage="The user name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:label runat="server" associatedcontrolid="txtPassword" cssclass="col-md-2 control-label">Password</asp:label>
            <div class="col-md-10">
                <asp:textbox runat="server" id="txtPassword" textmode="Password" cssclass="form-control" />
                <asp:requiredfieldvalidator runat="server" controltovalidate="txtPassword"
                    cssclass="text-danger" errormessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:label runat="server" associatedcontrolid="txtConfirmPassword" cssclass="col-md-2 control-label">Confirm password</asp:label>
            <div class="col-md-10">
                <asp:textbox runat="server" id="txtConfirmPassword" textmode="Password" cssclass="form-control" />
                <asp:requiredfieldvalidator runat="server" controltovalidate="txtConfirmPassword"
                    cssclass="text-danger" display="Dynamic" errormessage="The confirm password field is required." />
                <asp:comparevalidator runat="server" controltocompare="txtPassword" controltovalidate="txtConfirmPassword"
                    cssclass="text-danger" display="Dynamic" errormessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <asp:label runat="server" associatedcontrolid="txtEmail" cssclass="col-md-2 control-label">Email Address</asp:label>
            <div class="col-md-10">
                <asp:textbox runat="server" id="txtEmail" cssclass="form-control" />
                <asp:requiredfieldvalidator runat="server" controltovalidate="txtEmail"
                    cssclass="text-danger" errormessage="The user name field is required." />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:button id="btnRegister" runat="server" text="Register" cssclass="btn btn-primary" onclick="btnRegister_Click"></asp:button>
            </div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>
