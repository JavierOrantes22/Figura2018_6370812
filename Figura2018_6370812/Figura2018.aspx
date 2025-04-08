<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Figura2018.aspx.cs" Inherits="Figura2018_6370812.Figura2018" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsDropDownListCategory" runat="server"
                ConnectionString="<%$ConnectionStrings:SportsPlay%>"
                SelectCommand="SELECT CategoryID, Category
                FROM Category ORDER BY Category;"
                ></asp:SqlDataSource>

            <asp:SqlDataSource ID="sdsListBoxProduct" runat="server"
                ConnectionString="<%$ConnectionStrings:SportsPlay%>"
                SelectCommand="SELECT ProductID, Product
                FROM Product WHERE CategoryID = @CategoryID
                ORDER BY Product">

            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategory" Direction="Input"
                    Name="CategoryID" PropertyName="SelectedValue" Type="Int32"/>

            </SelectParameters>
                </asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label><br />
            <asp:DropDownList ID="ddlCategory" runat="server"
                AutoPostBack="true" DataSourceID="sdsDropDownListCategory" DataTextField="Category"
                DataValueField="CategoryID"></asp:DropDownList><br />
            <asp:Label ID="Label2" runat="server" Text="Product"></asp:Label><br />
            <asp:ListBox ID="libProduct" runat="server"
                DataSourceID="sdsListBoxProduct" DataTextField="Product"
                DataValueField="ProductID" Rows="7"></asp:ListBox>
        </div>
    </form>
</body>
</html>
