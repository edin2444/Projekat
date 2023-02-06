<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autoput Mesec Zut.aspx.cs" Inherits="Projekat.autoput_Mesec_Zut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cars</title>
            <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Cars in the game</h1>
            <p style="text-align:center">
                <asp:Label ID="Label1" runat="server" Text="Wanna see the car with the highest heat level? Or a fastest ride? Click(or tap) on the column and see :)"></asp:Label>
            </p>
        </div>
        <div>
            <asp:GridView DataSourceID="SqlDataSource1" ID="GridView1" AutoGenerateColumns="False" AllowSorting="True" CssClass="table" runat="server" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Heat_Level" HeaderText="Heat_Level" SortExpression="Heat_Level" />
                    <asp:BoundField DataField="Top_Speed" HeaderText="Top_Speed" SortExpression="Top_Speed" />
                    <asp:BoundField DataField="Acceleration_to_100kmh" HeaderText="Acceleration_to_100kmh" SortExpression="Acceleration_to_100kmh" />
                    <asp:BoundField DataField="Acceleration_to_200kmh" HeaderText="Acceleration_to_200kmh" SortExpression="Acceleration_to_200kmh" />
                    <asp:BoundField DataField="Handling" HeaderText="Handling" SortExpression="Handling" />
                    <asp:BoundField DataField="Durability" HeaderText="Durability" SortExpression="Durability" />
                    <asp:BoundField DataField="Strength" HeaderText="Strength" SortExpression="Strength" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource OnSelected="SqlDataSource1_Selected" ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-HM6IAOL\EDSQL;Initial Catalog=Autici;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False" SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Selekcija.aspx">Back to selection</asp:HyperLink>
        </div>
    </form>
</body>
</html>
