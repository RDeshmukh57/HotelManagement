<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="HotelManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .login-title {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #495057;
        }
        
        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        .btn {
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        
        .btn-primary {
            background-color: #007bff;
            color: white;
        }
        
        .btn-primary:hover {
            background-color: #0069d9;
        }
        
        .btn-secondary {
            background-color: #6c757d;
            color: white;
        }
        
        .btn-secondary:hover {
            background-color: #5a6268;
        }
        
        .text-center {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <div class="login-title">HOMEPAGE</div>
        
        <form id="frm" runat="server">
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Username" AssociatedControlID="loginUserNametxtbox"></asp:Label>
                <asp:TextBox ID="loginUserNametxtbox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Password" AssociatedControlID="loginPasswordtxtbox"></asp:Label>
                <asp:TextBox ID="loginPasswordtxtbox" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group text-center">
                <asp:Button ID="HomePageLogin" runat="server" Text="Login" CssClass="btn btn-primary" Width="199px" OnClick="HomePageLogin_Click" />
                <br />
                <asp:Label ID="loginErrorLabel" runat="server" ForeColor="#CC0000" Text="ErrorMessageLabel" Visible="False"></asp:Label>
            </div>
            
            <div class="form-group text-center">
                <asp:Button ID="NewUserRegisterBtn" runat="server" Text="New User? Register Here" CssClass="btn btn-secondary" Width="200px" OnClick="NewUserRegisterBtn_Click" />
            </div>
        </form>
    </div>
</asp:Content>