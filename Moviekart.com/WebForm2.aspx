<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Moviekart.com.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sing up</title>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <h1>Moviekart</h1>
        </div><center>
        <div class="bodybar">
            <h1>Sign Up</h1>
            <p>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your name" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            </p>
            <p>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Email id"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your email id" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Mobile No."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your mobile no" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter your password" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Re-Enter your Password" MaxLength="16"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="both password should be same" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="vg" OnClick="Button1_Click" />
            </p>
            <p>
                Already user? <a href="WebForm1.aspx" style="color:blue;">clickhere</a></p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <asp:Localize ID="Localize2" runat="server"></asp:Localize>
        </div><br /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Groove" ForeColor="Red" ValidationGroup="vg" />
    </form>
</body>
</html>
