<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ShareIT.Content_Pages.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="../Images/Share I.T Logo.jpg" height="220" width="300" alt="ShareIT SDSU Registration Form" style="float:left" />
            <asp:CreateUserWizard ID="RegisterUser" runat="server" OnCreatedUser="RegisterUser_CreatedUser">
                <WizardSteps>

                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        <ContentTemplate>
                            <table border="0" style="font-size: 100%; font-family: Verdana">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                        Sign Up for Your New Account</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                     <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">
                                            User Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                 <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">
                                            Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                         ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">
                                            Confirm Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                         ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                         ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">
                                            E-mail:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                         ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="background-color:maroon">
                                        <asp:Label ID="redidLabel" runat="server" AssociatedControlID="RedID" Font-Bold>
                                         RedID:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="RedID" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="redidRequired" runat="server" ControlToValidate="RedID"
                                            ErrorMessage="RedID is required." ToolTip="RedID is required."
                                            ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="firstNameLabel" runat="server" AssociatedControlID="FirstName">
                                            First Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="Fnamerequired" runat="server" ControlToValidate="FirstName"
                                         ErrorMessage="First name is required." ToolTip="First name is required."
                                         ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="lastnamelabel" runat="server" AssociatedControlID="LastName">
                                            Last Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="Lnamerequired" runat="server" ControlToValidate="LastName"
                                         ErrorMessage="Last name is required." ToolTip="Last name is required."
                                         ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                            ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                            ValidationGroup="RegisterUser"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red">
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                            
                        </ContentTemplate>
                    </asp:CreateUserWizardStep>

                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
       
    </form>
</body>
</html>
<script runat="server">
    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        ProfileCommon p = (ProfileCommon)ProfileCommon.Create(RegisterUser.UserName, true);
        p.RedID = ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("RedID")).Text;
        p.LastName = ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("LastName")).Text;
        p.FirstName = ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("FirstName")).Text;
        p.Save();
    }
</script>

