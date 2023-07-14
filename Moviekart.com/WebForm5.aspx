<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Moviekart.com.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="css/StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <h1>Moviekart</h1>
    </div><center>
        <div id="img_banner">
            <asp:Image ID="Image1" runat="server" Height="300px" style="border-radius:10px;"></asp:Image>
        </div>
        <div id="details" style="    font-size:30px;
    font-family:'Century Gothic','Times New Roman',Arial;">
            <strong><asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong><br/><br/>
            Type : 
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br/>
            Description : <asp:Label ID="Label2" runat="server" Text="" style="font-size:20px;"></asp:Label><br/>
            Rating : <asp:Label ID="Label3" runat="server" Text=""></asp:Label> / 10 <br/>
            Cast : <asp:Label ID="Label5" runat="server" Text=""></asp:Label>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Purchase" />

        </div>
    </form>
</body>
</html>
