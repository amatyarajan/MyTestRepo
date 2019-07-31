<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="MyAPI.First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section class="hero-banner magic-ball">
        <div class="container">

            <div class="row align-items-center text-center text-md-left">
                <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                    <h1 style="color:darkviolet">Login Here</h1>

                </div>

            </div>
        </div>
    </section>



    <h3>
        Login Page
    </h3>
    <table>
        <tr>
            <td>
                UserName:
            </td>
            <td>
                <asp:TextBox ID="UserName" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                            ControlToValidate="UserName"
                                            Display="Dynamic"
                                            ErrorMessage="Cannot be empty."
                                            runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="UserPass" TextMode="Password" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                            ControlToValidate="UserPass"
                                            ErrorMessage="Cannot be empty."
                                            runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Remember me?
            </td>
            <td>
                <asp:CheckBox ID="chkboxPersist" runat="server" />
            </td>
        </tr>
    </table>
    <asp:Button ID="Submit1" Text="Log In" runat="server" />
    <asp:Button ID="Button2" Text="Cancel" runat="server" />
    <p>
        <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>

        </div>

            </form>

    
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            //Close the bootstrap alert
            $('#linkClose').click(function () {
                $('#divError').hide('fade');
            });

            // Save the new user details
            $('#Submit1').click(function () {
                $.ajax({
                    url: '/api/home/GetInfo',
                    method: 'POST',
                    data: {
                        email: $('#UserName').val(),
                        password: $('#UserPass').val(),
                     },
                    success: function () {
                        $('#Msg').('show');
                    },
                    error: function (jqXHR) {
                        $('#divErrorText').text(jqXHR.responseText);
                        $('#divError').show('fade');
                    }
                });
            });
        });
    </script>

</body>
</html>
