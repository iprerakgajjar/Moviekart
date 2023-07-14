<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Moviekart.com.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <h1>Moviekart</h1>
        </div>
        <center>
        <div class="container">
            <div id="slider">
                <figure>
                    <img src="banner/pic1.jpg">
                    <img src="banner/pic2.jpg">
                    <img src="banner/pic3.jpg">
                    <img src="banner/pic4.jpg">
                    <img src="banner/pic5.jpg">
                </figure>
            </div><br /><br />
        <!-- </div id="collection" style="font-family:'Century Gothic','Times New Roman',Arial;">  -->
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" >
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="250px" ImageUrl='<%#Eval ("img_path") %>'></asp:ImageButton>
                <br/>
                <b><asp:Label ID="movie_nameLabel" runat="server" Text='<%# Eval("movie_name") %>' /></b>
                <br />
                <b>Rating:</b>
                <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
                <br />
                <b>Type:</b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                <b>Desc:</b>
                <asp:Label ID="descLabel" runat="server" Text='<%# Eval("desc") %>' />
                <br />
                <b>Cast:</b>
                <asp:Label ID="castLabel" runat="server" Text='<%# Eval("cast") %>' />
                <br />
                <asp:Button  runat="server" Text="View" CommandArgument='<%# Eval("movie_id") %>' OnCommand="show_movie_Command" />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </form>
</body>
<script type="text/javascript" src="js/JavaScript1.js"></script>
</html>
