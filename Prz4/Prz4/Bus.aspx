<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Bus.aspx.cs" Inherits="Prz4.Bus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/json2/0.1/json2.js"></script>
   
   
   <script>
        $(document).ready(function () {
            // Save the new user details
            $('#Submit1').click(function () {
                Console.WriteLine("Buttonclikced");
                $.ajax({
                    url: 'http://localhost:59530/api/Home/GetInfo',
                    method: 'GET',
                    dataType: 'JSON',
                    data: 
                        ({
                        username: $('#UserName').val(),
                        password: $('#UserPass').val(),
                     }),
                    success: function (status, result) {
                        console.log(status);
                        $('#Label1').show;
                    },
                    error: function (jqXHR) {
                         $('#Label1').hide;
                    }
                });
            });
        });
    </script>
  

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
      Login Page</h3>  
            <table>  
                <tr>  
                    <td>  
          UserName:</td>  
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
          Password:</td>  
                    <td>  
                        <asp:TextBox ID="UserPass" TextMode="Password"   runat="server" />  
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
          Remember me?</td>  
                    <td>  
                        <asp:CheckBox ID="chkboxPersist" runat="server" />  
                    </td>  
                </tr>  
            </table>  
            <asp:Button ID="Submit1" Text="Log In" runat="server" />  
            <asp:Button ID="Button2"  Text="Cancel" runat="server" />  
            <p>  
                <asp:Label ID="Msg" ForeColor="red" runat="server" />
                <asp:Label ID="Label1" runat="server" Text="Label" style="display:none;"></asp:Label>
            </p>  

    <p>If you click on the "Hide" button, I will disappear.</p>

<button id="hide">Hide</button>
<button id="show">Show</button>



        


</asp:Content>
