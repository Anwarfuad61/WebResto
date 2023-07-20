<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebResto.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap5/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap5/global/global.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid bg">
        <div class="row justify-content-center">
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-white font-weight-bold" runat="server">
                    <asp:Login ID="Login1" runat="server">
                        <LayoutTemplate>
                            <h2 class="text-center mb-3">Log In</h2>
                            <div class="form-group">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                                <asp:TextBox ID="UserName" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3 form-check">
                                <asp:CheckBox ID="RememberMe" class="form-check-label" runat="server" Text="Remember me next time." />
                            </div>
                            <div class="form-group">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                            <div class="form-group text-center">
                                <asp:Button ID="LoginButton" Class="btn btn-warning btn-block mt-4 font-weight-bold text-white" runat="server" CommandName="Login" OnClick="LoginButton_Click" Text="Log In" ValidationGroup="Login1" />
                            </div>
                        </LayoutTemplate>
                    </asp:Login>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </form>
            </div>
        </div>
    </div>
    <script src="bootstrap5/js/bootstrap.min.js"></script>
</body>
</html>
