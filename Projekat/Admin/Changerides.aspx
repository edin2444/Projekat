<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Changerides.aspx.cs" Inherits="Projekat.Admin.Changerides" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change the rides</title>
            <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">CUD With Rides</h1>

        </div>
        <asp:Label ID="Label1" runat="server" Text="Create(Insert) or Edit(Update):"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="ID(ONLY FOR EDITING):"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox11" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" ForeColor="Red" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Manufacturer:"></asp:Label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="You have to insert manufacturer name!" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="red" ErrorMessage="Manufacturer you inserted is not valid!" ValidationExpression="[a-zA-Z]+" ControlToValidate="TextBox1">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Model:"></asp:Label>
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ErrorMessage="You have to insert model name!" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Heat Level:"></asp:Label>
        <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red" ErrorMessage="You have to insert heat level!" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label5" runat="server" Text="Top Speed:"></asp:Label>
        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" ErrorMessage="You have to insert top speed!" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Acceleration to 100kmh(in format number.number):"></asp:Label>
        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red" ErrorMessage="You have to insert acceleration to 100km/h(in format number.number)!" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="Label7" runat="server" Text="Acceleration to 200kmh(in format number.number):"></asp:Label>
        <asp:TextBox ID="TextBox6" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" ErrorMessage="You have to insert acceleration to 200km/h(in format number.number)!" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label8" runat="server" Text="Handling(in format number.number):"></asp:Label>
        <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="red" ErrorMessage="You have to insert handling(in format number.number)!" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label9" runat="server" Text="Durability(in format number.number):"></asp:Label>
        <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="red" ErrorMessage="You have to insert durability(in format number.number)!" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label10" runat="server" Text="Strength(in format number.number):"></asp:Label>
        <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="red" ErrorMessage="You have to insert strength(in format number.number)!" ControlToValidate="TextBox9">*</asp:RequiredFieldValidator>


                <br />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-lg" Text="Insert" OnClick="Button1_Click" />


                &nbsp;&nbsp;&nbsp;


                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-lg" Text="Update" OnClick="Button2_Click" />


                <br />

        <asp:Label ID="Label11" runat="server" Text="Delete:"></asp:Label>
                <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="ID:"></asp:Label>
        <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>

        <asp:Button ID="Button3" CssClass="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />
        <br />

        <asp:Label ID="Label16" runat="server" ForeColor="Red" Text=""></asp:Label>
        <br />

        <asp:Label ID="Label13" runat="server" Text=""></asp:Label>

        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

        <br />
        <asp:Label ID="Label17" runat="server" Text="All rides in database:"></asp:Label>

        <br />

        <asp:GridView DataSourceID="SqlDataSource1" ID="GridView1" CssClass="table" runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AuticiConnectionString %>" SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Izmena.aspx">Back to selection</asp:HyperLink>
    </form>
</body>
</html>
