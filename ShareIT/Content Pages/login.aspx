<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ShareIT.Content_Pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="../Images/Share I.T Logo.jpg" height="190" width="300" alt="ShareIT SDSU" style="float:left" />
            <asp:Login ID="ShareITLogin" runat="server" CreateUserText="Register for access!" CreateUserUrl="~/Content Pages/register.aspx" Height="165px" PasswordRecoveryText="Forgot password?" PasswordRecoveryUrl="~/Content Pages/recoverpassword.aspx" RememberMeText="Remember me." TitleText="Access  ShareIT!" Width="405px"></asp:Login>
        </div>
    </form>
</body>
</html>
