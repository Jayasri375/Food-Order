
<%@ Page Title="User Details" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="FoodOrders.UserDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                <asp:Label ID="lblName" runat="server" Text="Name" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Name is required." 
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPhone" runat="server" Text="Phone" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="txtPhone" ErrorMessage="Phone number is required." 
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server"
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Invalid phone number (Must be 10 digits)." 
                    ValidationExpression="^\d{10}$"
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblEmail" runat="server" Text="Email" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is required." 
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format." 
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                    ForeColor="Red" Display="Dynamic" ValidationGroup="vsSubmit">
                </asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow > 
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    OnClick="Submit_Click" ValidationGroup="vsSubmit" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
