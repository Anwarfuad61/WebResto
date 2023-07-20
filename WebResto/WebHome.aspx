<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebHome.aspx.cs" Inherits="WebResto.WebHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Kelompok 3 Web Resto!</title>
    <link href="bootstrap5/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 80px;
        }

        .container-fluid {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .container {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Kelompok 3 Web Resto</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <form id="form1" runat="server">
            <div class="container-fluid">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="h2 mb-4"></asp:Label>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <p class="text-center">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-lg">Data</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="btn btn-danger btn-lg ml-3">Log Out</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
        </form>
        <div class="container mt-5">
            <h1 class="display-4">Welcome to Kelompok 3 Web Resto!</h1>
           <p class="lead">Anggota Kelompok:</p>
<ul class="list-group">
    <li class="list-group-item">Panji Arief Pratama  21041001</li>
    <li class="list-group-item">Anwar Fuad  21041071</li>
    <li class="list-group-item">Mufasirin  21041086</li>
    <li class="list-group-item">Ilham Adi Wijaya  21041016</li>
</ul>

            </div>
    </div>

    <script src="bootstrap5/js/bootstrap.min.js"></script>
</body>
</html>
