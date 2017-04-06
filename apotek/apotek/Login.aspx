<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="apotek.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login - Apotik Sumber Jaya</title>
    <link href="Content/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/custom.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="images/favicon.ico" />
    <link href="Content/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"  rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="modal-dialog">
            <!-- Modal Content -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times</button>
                    <h4 class="modal-title">
                        Silahkan Login Terlebih Dahulu !</h4>
                </div>
                <div class="modal-body">
                    <div role="form">
                        <asp:Literal ID="Literal1" runat="server" /><br />
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr class="divider">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="chkRemberme" runat="server" Text="Remember Me" CssClass="checkbox-inline" />
                                    |
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-primary">Forgot Password ?</asp:LinkButton>
                                </div>
                                <div class="col-sm-6">
                                    <span class="pull-right">
                                        <asp:Button ID="LoginButton" CssClass="btn btn-success" runat="server" Text="Log In" OnClick="Login_Click" /></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
