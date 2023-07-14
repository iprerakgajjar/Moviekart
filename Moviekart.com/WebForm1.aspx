<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Moviekart.com.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <h1>Moviekart</h1>
    </div><center>
        <div class="body">
            <h1>Login</h1>
            <p>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="vg" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your Username" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="vg" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your password" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" ValidationGroup="vg" Text="Submit" OnClick="Button1_Click" />
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                Forgot your password?</p>
            <p>
                New user? <a href="WebForm2.aspx" style="color:blue;">clickhere</a></p>
        </div>
          </center>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="vg" />
    </form>
</body>
</html>
