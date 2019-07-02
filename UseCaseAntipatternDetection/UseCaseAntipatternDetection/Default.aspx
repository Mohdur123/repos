<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UseCaseAntipatternDetection.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username: <asp:TextBox ID="textbox_username" runat="server"></asp:TextBox><br />
            Password<asp:TextBox ID="textbox_password" runat="server"></asp:TextBox><br />
            <asp:Label ID="label_message" runat="server" Text="Label"  ForeColor="YellowGreen" BorderColor="Black"></asp:Label><br /> 
            <asp:Button ID="button_login" runat="server" Text="Button" OnClick="button_login_click" />
        </div>
    </form>
</body>
</html>
