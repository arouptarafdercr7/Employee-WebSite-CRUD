<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Create New Employee
    </button>

    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered"></asp:GridView>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New Employee</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <%--Form Design--%>
                    <div class="form-group">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Id Number</label>
                            <asp:TextBox ID="txtId" runat="server" class="form-control" placeholder="Employee Id"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Name</label>
                            <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Employee Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Salary</label>
                            <asp:TextBox ID="txtSalary" runat="server" class="form-control" placeholder="Employee Salary"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                    <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" OnClick="btnSave_Click" />
                </div>
            </div>
        </div>
    </div>

    <asp:Literal ID="Literal1" runat="server" Text="no error"></asp:Literal>
    <br />
    <asp:Label ID="Label1" runat="server" Text="thanks"></asp:Label>
</asp:Content>

