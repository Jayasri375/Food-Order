<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderScreen.aspx.cs" Inherits="Foodorders.OrderScreen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add Food Form</h2>
    <asp:Table ID="Table1" runat="server" Height="250px" Width="500px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblName" runat="server" Text="Name of the Restaurant" Width="250px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtRestaurantName" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblFood" runat="server" Text="Food" Width="250px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtFoodName" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity" Width="250px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtQuantity" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPrice" runat="server" Text="Price" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPrice" runat="server" Width="200px" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="btnSubmit" runat="server" OnClick="Food_Entry" Text="Add Food" />
    <br />
    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
</asp:Content>