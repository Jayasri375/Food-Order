<%@ Page Title="Order Details" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" 
    CodeBehind="OrderDetails.aspx.cs" Inherits="YourNamespace.OrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <asp:Table ID="Table1" runat="server" Height="250px" Width="500px">

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUserID" runat="server" Text="User ID" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUserID" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserID" runat="server" 
                    ControlToValidate="txtUserID" ErrorMessage="User ID is required." 
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblRestaurant" runat="server" Text="Select Restaurant" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlRestaurants" runat="server" Width="200px">
                    <asp:ListItem Value="Adyar">Adyar</asp:ListItem>
                    <asp:ListItem Value="Sangeetha">Sangeetha</asp:ListItem>
                    <asp:ListItem Value="Geetham">Geetham</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblFood" runat="server" Text="Select Food" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlFoods" runat="server" Width="200px">
                    <asp:ListItem Value="50">Dosa - ₹50</asp:ListItem>
                    <asp:ListItem Value="80">Idly - ₹80</asp:ListItem>
                    <asp:ListItem Value="120">Biryani - ₹120</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtQuantity" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" 
                    ControlToValidate="txtQuantity" ErrorMessage="Quantity is required." 
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPrice" runat="server" Text="Total Price" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPrice" runat="server" Width="200px" ReadOnly="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="btnSubmit" runat="server" Text="Place Order" 
                    OnClick="btnSubmit_Click" ValidationGroup="vsSubmit" />
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>

    <script>
        $(document).ready(function () {
            function calculatePrice() {
                var qty = parseInt($("#<%= txtQuantity.ClientID %>").val()) || 0;
                var price = parseInt($("#<%= ddlFoods.ClientID %>").find('option:selected').val()) || 0;
                var total = qty * price;
                $("#<%= txtPrice.ClientID %>").val(total);
            }

            $("#<%= txtQuantity.ClientID %>").on('keyup change', calculatePrice);
            $("#<%= ddlFoods.ClientID %>").on('change', calculatePrice);
        });
    </script>

</asp:Content>