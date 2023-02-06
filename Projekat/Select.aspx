<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select.aspx.cs" Inherits="Projekat.Select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select song</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Insert index from 0 to 10:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" runat="server" Text="Pusti" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Morate uneti broj!" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Or choose the song from the list:"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
    </form>
    
</body>
</html>
