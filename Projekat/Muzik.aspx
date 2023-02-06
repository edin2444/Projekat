<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muzik.aspx.cs" Inherits="Projekat.Muzika" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Songs</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">How do  you want to select a song?</h1>
        </div>
        <div style="margin-left:400px">
            <a href="Random.aspx">
            <button type="button" class="btn btn-primary btn-lg">The song is selected at random</button></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="Select.aspx">
            <button type="button" class="btn btn-primary btn-lg">You select the song</button></a>
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Selekcija.aspx">Back to selection</asp:HyperLink>
        </div>
    </form>
</body>
</html>
