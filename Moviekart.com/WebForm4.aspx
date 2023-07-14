<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Moviekart.com.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add/Remove collection</title>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <h1>Moviekart</h1>
    </div><center>
        <div id="collection">
            <table border="1">
            <tr>
                <th colspan="2">Enter Movie detail</th>
            </tr>
            
            <tr>
                <th>Enter Movie Name</th>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Enter Movie Type</th>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="    height:40px;
    width:250px;
    text-align:center;
    outline:none;
    border:none;
    border-radius:10px;
    font-size:15px;
    font-family:'Century Gothic','Times New Roman',Arial;">
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Adventure</asp:ListItem>
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Sci Fi</asp:ListItem>
                        <asp:ListItem>Romance</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</td>
            </tr>
            <tr>
                <th>Movie banner</th>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Enter Rating</th>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Enter Description</th>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Enter Cast</th>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"><center>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Update" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
