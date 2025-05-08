<%@ Page Language="C#" AutoEventWireup="true" CodeBehind=".aspx.cs" Inherits="HotelManagement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        USER REGISTRATION</p>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="FirstNametxtbox" runat="server" Width="250px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNametxtbox" ErrorMessage="Required Fields..." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="LastNametxtbox" runat="server" Width="250px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNametxtbox" ErrorMessage="Required Fields..." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UserNametxtbox" runat="server" AutoPostBack="true" Width="250px" OnTextChanged="UserNametxtbox_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserNametxtbox" ErrorMessage="Please enter valid username..." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="MaleRbtn" runat="server" GroupName="GenderGroup" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="FemaleRbtn" runat="server" GroupName="GenderGroup" Text="Female" />
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="Passwordtxtbox" runat="server" Width="250px"></asp:TextBox>
            <br />
            <br />
&nbsp;<asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ConfirmPasswordtxtbox" runat="server" Width="250px"></asp:TextBox>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Passwordtxtbox" ControlToValidate="ConfirmPasswordtxtbox" ErrorMessage="Confirm Password..." ForeColor="#FF3300"></asp:CompareValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Emailtxtbox" runat="server" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Emailtxtbox" ErrorMessage="Invalid Email..." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Phonetxtbox" runat="server" Width="250px"></asp:TextBox>
            <br />
            <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Addresstxtbox" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            &nbsp;
            <br />
            <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Agetxtbox" runat="server" Width="250px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Agetxtbox" ErrorMessage="Age must be between 18 to 75..." ForeColor="#FF3300" MaximumValue="75" MinimumValue="18"></asp:RangeValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label11" runat="server" Text="Languages Known..."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Englishbox" runat="server" Text="English" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Marathibox" runat="server" Text="Marathi" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Hindibox" runat="server" Text="Hindi" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;<asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ContryDroplist" runat="server">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>US</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;<asp:Button ID="Registerbtn" runat="server" Text="Register" Width="183px" OnClick="Registerbtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>
