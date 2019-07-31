<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Prz4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!--================Hero Banner Area Start =================-->
  <section class="hero-banner magic-ball">
    <div class="container">

      <div class="row align-items-center text-center text-md-left">
        <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
          <h1>Travel More To Discover Yourself</h1>
          <p>Find the best travel deal here. Get your air tickets, bus tickets, train tickets, all in one place. </p>
          <a class="button button-hero mt-4" href="Login.aspx">Get Started</a>
        </div>
        <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
          <img class="img-fluid" src="img/home/hero-img.png" alt="">
        </div>
      </div>
    </div>
  </section>
  <!--================Hero Banner Area End =================-->


  <!--================Service Area Start =================-->
  <section class="section-margin generic-margin">
    <div class="container">
      <div class="section-intro text-center pb-90px">
        <img class="section-intro-img" src="img/home/section-icon.png" alt="">
        <h2>Our Popular Services</h2>
        <p>We provide the best service in an affordable price. You dont need to worry about your travel.</p>
      </div>

      <div class="row">
        <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="service-card text-center">
            <div class="service-card-img">
             <a href="Hotels.aspx"><img class="img-fluid" src="img/home/service1.png" alt=""></a> 
            </div>
            <div class="service-card-body">
              <h3>Hotel Booking</h3>
              <p>Get the best price for the hotels you want. Cheapest price at your convineince.</p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="service-card text-center">
            <div class="service-card-img">
              <a href="Flights.aspx"> <img class="img-fluid" src="img/home/service2.png" alt=""></a>
            </div>
            <div class="service-card-body">
              <h3>Flight Booking</h3>
              <p>Fly as you like wherever you wish. Get the cheapest deal here.</p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
          <div class="service-card text-center">
            <div class="service-card-img">
              <a href="Bus.aspx">  <img class="img-fluid" src="img/home/service3.png" alt=""></a>
            </div>
            <div class="service-card-body">
              <h3>Bus Ticket</h3>
              <p>Travel to any location. Get the bus service you prefer.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================Service Area End =================-->

   
</asp:Content>
