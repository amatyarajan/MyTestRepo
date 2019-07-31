<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="Prz4.Flights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/json2/0.1/json2.js"></script>

    <script>
        $(document).ready(function () {
             $("#flight_detail").hide();
            $("#oneway").click(function () {
                $("#flight_detail").show();
                $("#Arrival_div").hide();
            });
            $("#round").click(function () {
                $("#flight_detail").show();
                $("#Arrival_div").show();
            });
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--================Header Menu Area =================-->
    <section class="hero-banner magic-ball">
        <div class="container">

            <div class="row align-items-center text-center text-md-left">
                <div class="col-md-pr6 col-lg-5 mb-5 mb-md-0">
                    <h1>Find the best flight for your trip</h1>
                </div>
                <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
                    <img class="img-fluid" src="img/home/service2.png" alt="">
                </div>
            </div>
        </div>
    </section>


    <!--================Header Menu Area =================-->



    <section style="text-align: center">

        <h1>Type:</h1>
       
        <asp:Button ID="oneway" runat="server" Text="One-way" ClientIDMode="Static" /><asp:Button ID="round" runat="server" Text="Round-Trip" ClientIDMode="Static" />

        <div id="flight_detail"  class="auto-style1">

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
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="DropDownList2" ControlToCompare="DropDownList1" Operator="NotEqual" Type="String" runat="server" ErrorMessage="Both destination cannot be same"></asp:CompareValidator>
            <h2>Departure</h2>

            <input type="date" style="height: 30px; width: 200px" />

            <div id="Arrival_div">
                <h2>Arrival</h2>
                <input type="date" style="height: 30px; width: 200px" />
            </div>



            <div class="form-group">
                <button class="button border-0 mt-3" type="submit">Search Package</button>

            </div>

        </div>



    </section>

</asp:Content>
