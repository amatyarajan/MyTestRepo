<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prz4.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 315px;
            height: 160px;
        }
        .auto-style2 {
            height: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--================Hero Banner Area Start =================-->
  <section class="hero-banner magic-ball">
    <div class="container">

      <div class="row align-items-center text-center text-md-left">
        <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
          <h1>About US:</h1>
          <p>We are service provider located in Waterwalk Dallas. Customer satisfaction is our primary concern. We make sure that our customer gets their requirements. You can contact us on our 
              social media or contact on our direct helpline number 616-304-1458. Customer satisfaction is our primary concern.
          </p>
                   
        </div>
          <div>
              <div id="buttonbox" runat="server">
                  <br />
                  <br />
                  <br />
                  <br />
         <asp:Button ID="Button2" class="button button-hero mt-4" runat="server" Text="Suggestions" OnClick="Button2_Click1" />
              </div>              
         
              <div class="custompopup" id="divThankYou" runat="server">
              <table style="width: 100%;">
                  <tr>
                      <td style="width: 315px">Name:</td>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server" CssClass="offset-sm-0" Width="376px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">Suggestion</td>
                      <td class="auto-style2">
                          <asp:TextBox ID="TextBox3" runat="server" CssClass="offset-sm-0" Height="152px" Width="381px"></asp:TextBox>
                      </td>
                      <td class="auto-style2"></td>
                  </tr>
                  <tr>
                      <td style="width: 315px">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td style="width: 315px">
                          <asp:Button ID="Button3" runat="server" class="button button-hero mt-4" OnClick="Button3_Click" Text="Submit" />
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td style="width: 315px">
                        
                          <asp:Label ID="lblcmt" runat="server" Text=" "></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
    
                  </div>
         
    
    </div>
        <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
          <img class="img-fluid" src="img/home/about-img.png" alt="">
        </div>
      </div>
    </div>
  </section>
    
      
        

</asp:Content>
