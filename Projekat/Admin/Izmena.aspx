<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Izmena.aspx.cs" Inherits="Projekat.Admin.Izmena" %>

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
                        <h1 style="text-align:center">What you want to do?</h1>
        </div>
        <div style="margin-left: 400px">
            <a href="Changerides.aspx">
            <button type="button" class="btn btn-primary btn-lg">Change the rides!</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Changechallenges.aspx">
            <button type="button" class="btn btn-primary btn-lg">Change the Challenges!</button>
                </a>
            &nbsp;&nbsp;&nbsp;
                <a href="changerapsheet.aspx">
            <button type="button" class="btn btn-primary btn-lg">Change the Rap Sheet!</button>
                </a>
        </div>
    </form>
</body>
</html>
