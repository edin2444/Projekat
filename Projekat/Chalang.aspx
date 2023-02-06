﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chalang.aspx.cs" Inherits="Projekat.Chalang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Challenges in the game</h1>
                        <p style="text-align:center">
                <asp:Label ID="Label1" runat="server" Text="Wanna see the challenge with the biggest reward? Click(or tap) on the column and see :)"></asp:Label>
            </p>

        </div>
        <div>
            <asp:GridView DataSourceID="SqlDataSource1" ID="GridView1" AllowSorting="true" CssClass="table" runat="server"> 
            </asp:GridView>
            <asp:SqlDataSource OnSelected="SqlDataSource1_Selected" ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AuticiConnectionString %>" SelectCommand="SELECT * FROM [Challenges]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Selekcija.aspx">Back to selection</asp:HyperLink>
        </div>
    </form>
</body>
</html>
