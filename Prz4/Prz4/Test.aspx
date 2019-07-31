<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Prz4.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
     <script src="js/jquery-3.4.1.min.js"></script>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/json2/0.1/json2.js"></script>
    
            <script>
                $(document).ready(function () {

                     $("Button2").click(function(){
                $("#test").hide();
                     });

             $("#oneway").click(function(){
                    $("#flightdetail").show();
                 $("#Arrival_Div").hide();
                 $("#Button1").show()
             });
             $("#round").click(function(){
                     $("#flightdetail").show();
                 $("#Arrival_Div").show();
                 $("Button1").hide();
             });

                 
            });


    </script>

</head>


<body>
    <form id="form1" runat="server">
    
                    <h1>Type:</h1>
        <input id="Button1" type="button" value="button" />
        <asp:Button ID="oneway" runat="server" Text="One-way" /><asp:Button ID="round" runat="server" Text="Round-Trip" />
                  
         <div id="flight_detail" runat="server" class="auto-style1">

             <h2>From:</h2>

             <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px">
                 <asp:ListItem Text="Dallas"></asp:ListItem>
                 <asp:ListItem Text="New York"></asp:ListItem>
                 <asp:ListItem Text="DC"></asp:ListItem>
                 <asp:ListItem Text="Detroit"></asp:ListItem>
                 <asp:ListItem Text="Chicago"></asp:ListItem>
                 <asp:ListItem Text="San Francisco"></asp:ListItem>
                 <asp:ListItem Text="Miami"></asp:ListItem>
                 <asp:ListItem Text="Seatlle"></asp:ListItem>
             </asp:DropDownList>
             <h2>To:</h2>
             <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="200px">
                 <asp:ListItem Text="Dallas"></asp:ListItem>
                 <asp:ListItem Text="New York"></asp:ListItem>
                 <asp:ListItem Text="DC"></asp:ListItem>
                 <asp:ListItem Text="Detroit"></asp:ListItem>
                 <asp:ListItem Text="Chicago"></asp:ListItem>
                 <asp:ListItem Text="San Francisco"></asp:ListItem>
                 <asp:ListItem Text="Miami"></asp:ListItem>
                 <asp:ListItem Text="Seatlle"></asp:ListItem>
             </asp:DropDownList>
              <br />
              <asp:CompareValidator ID="CompareValidator1" controltovalidate="DropDownList2" ControlToCompare="DropDownList1" operator="NotEqual" Type="String" runat="server" ErrorMessage="Both destination cannot be same"></asp:CompareValidator>
             <h2>Departure</h2>

             <input type="date" style="height: 30px; width: 200px" />

           <div id="Arrival_div" runat="server">
             <h2>Arrival</h2>
             <input type="date" style="height: 30px; width: 200px" />
           </div> 
          


             <div class="form-group">
                 <button class="button border-0 mt-3" type="submit">Search Package</button>

             </div>

         </div>

        <p>This is a paragraph.</p>
    <p id="test">This is another paragraph.</p>
       
 
   
        <input id="Button2" type="button" value="button" />
    
                   
    </form>
</body>
</html>
