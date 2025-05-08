<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page7.aspx.cs" Inherits="HotelManagement.Page7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Registration Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblUsername" runat="server" Font-Size="Large" OnDataBinding="Page_Load" Text="usernameLabel" Width="174px"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Tahoma" Text="Room Type"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RbtnDelux" runat="server" Font-Italic="True" GroupName="RoomType" Text="Delux" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RbtnOrdinary" runat="server" Font-Italic="True" GroupName="RoomType" Text="Ordinary" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Tahoma" Text="Amenities"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="AcCbox" runat="server" Font-Italic="True" Text="AC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="ComputerCbox" runat="server" Font-Italic="True" Text="Computer" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Register" Width="97px" />
        </div>
    </form>
</body>
</html>
