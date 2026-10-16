
<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="OnlineEventRegistration._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration Portal</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        .title {
            font-size: 28px;
            font-weight: bold;
            color: green;
            text-align: center;
        }

        .row {
            margin-bottom: 18px;
        }

        .label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }

        .textbox, .dropdown {
            width: 250px;
            padding: 8px;
        }

        .button {
            padding: 10px 25px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: darkgreen;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="container">

        <div class="title">
            Online Event Registration Portal
        </div>

        <br />

        <!-- Name -->
        <div class="row">
            <asp:Label ID="Label2" runat="server"
                Text="Name" CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtName" runat="server"
                CssClass="textbox">
            </asp:TextBox>

            <br />

            <asp:RequiredFieldValidator ID="rfvName"
                runat="server" ControlToValidate="txtName"
                ErrorMessage="* Name Required"
                CssClass="error">
            </asp:RequiredFieldValidator>
        </div>

        <!-- Email -->
        <div class="row">
            <asp:Label ID="Label3" runat="server"
                Text="Email" CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="textbox">
            </asp:TextBox>

            <br />

            <asp:RequiredFieldValidator ID="rfvEmail"
                runat="server" ControlToValidate="txtEmail"
                ErrorMessage="* Email Required"
                CssClass="error">
            </asp:RequiredFieldValidator>

            <br />

            <asp:RegularExpressionValidator ID="revEmail"
                runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email"
                CssClass="error"
                ValidationExpression="\w+([-.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </div>

        <!-- Mobile -->
        <div class="row">
            <asp:Label ID="Label4" runat="server"
                Text="Mobile Number" CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtMobile" runat="server"
                CssClass="textbox">
            </asp:TextBox>

            <br />

            <asp:RequiredFieldValidator ID="rfvMobile"
                runat="server" ControlToValidate="txtMobile"
                ErrorMessage="* Mobile Number Required"
                CssClass="error">
            </asp:RequiredFieldValidator>

            <br />

            <asp:RegularExpressionValidator ID="revMobile"
                runat="server" ControlToValidate="txtMobile"
                ErrorMessage="Enter 10 Digit Mobile Number"
                CssClass="error"
                ValidationExpression="^[0-9]{10}$">
            </asp:RegularExpressionValidator>
        </div>

        <!-- Gender -->
        <div class="row">
            <asp:Label ID="Label5" runat="server"
                Text="Gender" CssClass="label">
            </asp:Label>

            <asp:RadioButtonList ID="RadioButtonList1"
                runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <!-- Event -->
        <div class="row">
            <asp:Label ID="Label6" runat="server"
                Text="Select Event" CssClass="label">
            </asp:Label>

            <asp:DropDownList ID="ddlEvent" runat="server"
                CssClass="dropdown">

                <asp:ListItem Value="0">--Select Event--</asp:ListItem>
                <asp:ListItem>Tech Seminar</asp:ListItem>
                <asp:ListItem>Coding Workshop</asp:ListItem>
                <asp:ListItem>AI Conference</asp:ListItem>
                <asp:ListItem>Hackathon</asp:ListItem>

            </asp:DropDownList>

            <br />

            <asp:RequiredFieldValidator ID="rfvEvent"
                runat="server" ControlToValidate="ddlEvent"
                InitialValue="0"
                ErrorMessage="* Please Select Event"
                CssClass="error">
            </asp:RequiredFieldValidator>
        </div>

        <!-- Password -->
        <div class="row">
            <asp:Label ID="Label8" runat="server"
                Text="Password" CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtPassword" runat="server"
                TextMode="Password" CssClass="textbox">
            </asp:TextBox>

            <br />

            <asp:RequiredFieldValidator ID="rfvPassword"
                runat="server" ControlToValidate="txtPassword"
                ErrorMessage="* Password Required"
                CssClass="error">
            </asp:RequiredFieldValidator>

            <br />

            <asp:RegularExpressionValidator ID="revPassword"
                runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password must be at least 6 characters and contain a number"
                CssClass="error"
                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{6,}$">
            </asp:RegularExpressionValidator>
        </div>

        <!-- Confirm Password -->
        <div class="row">
            <asp:Label ID="Label9" runat="server"
                Text="Confirm Password" CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtConfirmPassword" runat="server"
                TextMode="Password" CssClass="textbox">
            </asp:TextBox>

            <br />

            <asp:CompareValidator ID="cvPassword"
                runat="server"
                ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Passwords do not match"
                CssClass="error">
            </asp:CompareValidator>
        </div>

        <!-- Terms -->
        <div class="row">
            <asp:CheckBox ID="chkTerms" runat="server"
                Text="I Accept Terms and Conditions" />
        </div>

        <!-- Register Button -->
        <div class="row">
            <asp:Button ID="btnRegister" runat="server"
                Text="Register" CssClass="button"
                OnClick="btnRegister_Click" />
        </div>

        <!-- Message -->
        <div class="row">
            <asp:Label ID="lblMessage" runat="server"
                CssClass="success">
            </asp:Label>
        </div>

    </div>
</form>
</body>
</html>
