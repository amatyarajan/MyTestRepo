<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Hotels.aspx.cs" Inherits="Prz4.Hotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--================Hero Banner Area Start =================-->
  <section class="hero-banner magic-ball">
    <div class="container">

      <div class="row align-items-center text-center text-md-left">
        <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
          <h1>Find the best hotel for your trip</h1>
        </div>
        <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
          <img class="img-fluid" src="img/home/service3.png" alt="">
        </div>
      </div>
    </div>
  </section>
  <!--================Hero Banner Area End =================-->
    <!--================Search Package section Start =================-->
  <section class="section-margin">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-xl-5 align-self-center mb-5 mb-lg-0">
          <div class="search-content">
            <h2>Search suitable <br class="d-none d-xl-block"> and affordable plan <br class="d-none d-xl-block"> for your tour</h2>
            <p>Choose a right place for your stay.</p>
            <a class="button" href="#">Learn More</a>
          </div>
        </div>
        <div class="col-lg-6 col-xl-6 offset-xl-1">
          <div class="search-wrapper">
        

            <form class="search-form" action="#">
              <div class="form-group">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Location of Hotel:">
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-search"></i></span>
                  </div>
                </div>
              </div>
              
              <div class="form-group">
                <div class="input-group">
                  <input type="date" class="form-control">
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-notepad"></i></span>
                  </div>
                </div>
              </div>
                <div class="form-group">
                <div class="input-group">
                  <input type="date" class="form-control">
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-notepad"></i></span>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <select name="priceRange" id="priceRange">
                  <option value="disabled" disabled selected>Price range</option>
                  <option value="8 AM">8 AM</option>
                  <option value="12 PM">12 PM</option>
                </select>
              </div>
              <div class="form-group">
                  <asp:Button ID="Button1" class="button border-0 mt-3" runat="server" Text="Button" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="button border-0 mt-3" runat="server" Text="Search"  OnClick="Button2_Click" />
              </div>
            </form>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!--================Search Package section End =================-->

</asp:Content>
