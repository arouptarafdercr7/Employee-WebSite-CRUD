<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeleteEMP.aspx.cs" Inherits="DeleteEMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="txtId">Id Number</label>
            <div class="controls">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="txtName">Name</label>
            <div class="controls">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="txtSalary">Salary</label>
            <div class="controls">
                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                &nbsp;
        
        <asp:LinkButton ID="btnDelete" runat="server" CssClass="fa fa-trash-o fa-4x" OnClientClick="return confirm('Are you sure you want to dele this record?');" OnClick="btnDelete_Click">Delete</asp:LinkButton>
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</asp:Content>

