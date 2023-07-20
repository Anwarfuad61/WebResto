<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="WebResto.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data View</title>
    <link href="bootstrap5/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 80px;
        }

        .container {
            text-align: center;
            margin-top: 30px;
        }

        .table-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">OUR Web</a>
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
            <div class="container-fluid">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="h2 mb-4"></asp:Label>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <p class="text-center">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-lg">Home</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="btn btn-danger btn-lg ml-3">Log Out</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="table-container container mt-5">
            <h1 class="display-4">Data View</h1>
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_MENU" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" CssClass="table table-striped">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ID_MENU" HeaderText="ID_MENU" InsertVisible="False" ReadOnly="True" SortExpression="ID_MENU" />
                        <asp:BoundField DataField="NAMA_MENU" HeaderText="NAMA_MENU" SortExpression="NAMA_MENU" />
                        <asp:BoundField DataField="HARGA_MENU" HeaderText="HARGA_MENU" SortExpression="HARGA_MENU" />
                        <asp:BoundField DataField="DESKRIPSI_MENU" HeaderText="DESKRIPSI_MENU" SortExpression="DESKRIPSI_MENU" />
                        <asp:BoundField DataField="ID_KATEGORI" HeaderText="ID_KATEGORI" SortExpression="ID_KATEGORI" Visible="False" />
                        <asp:BoundField DataField="NAMA_KATEGORI" HeaderText="NAMA_KATEGORI" SortExpression="NAMA_KATEGORI" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebResto.DataSet1TableAdapters.TBL_MENUTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>

    <script src="bootstrap5/js/bootstrap.min.js"></script>
</body>
</html>
