<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prz4.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -ms-flex-align: stretch;
            align-items: stretch;
            width: 100%;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="hero-banner magic-ball">
    <div class="container">

      <div class="row align-items-center text-center text-md-left">
        <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
            <h1 style="color:darkviolet">Don't have an account. It is easy to signup.</h1>
             
        </div>
        <div class="col-md-6 col-lg-7 col-xl-6 offset-xl-1">
         <a class="button button-hero mt-4" href="Signup.aspx">Signup</a>
        </div>
      </div>
    </div>
  </section> 
    
    <section class="section-margin">
    <div class="container">
      <div class="row">
                  <div class="col-lg-6 col-xl-5 align-self-center mb-5 mb-lg-0">
                    
                      
              <div class="form-group">
                <div class="input-group">
                         <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                       <h2 style= "color:mediumpurple">Sign-in</h2>
                             </div>
                </div>
              </div>
              
              <div class="form-group">
                <div class="input-group">
                       <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                    <h2>Email:</h2>
                          </div>
                    <asp:TextBox ID="txtusername" class="form-control"  placeholder=" email:" runat="server" MaxLength="100" style="border-style: solid; border-color: inherit; border-width: 2px;" Width="161px"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter UserName" ControlToValidate="txtusername" ValidationGroup="Login" Font-Bold="true"></asp:RequiredFieldValidator>
                   
                                       
                </div>
              </div>

                <div class="form-group">
                <div class="auto-style1">
                  <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                 <h2>Password:</h2>
                    </div>
                    <asp:TextBox ID="txtpassword" type="password" runat="server" class="form-control" placeholder="   password:"  MaxLength="100" style="border-style: solid; border-color: inherit; border-width: 2px;" Width="197px"></asp:TextBox>       
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpassword" ValidationGroup="Login" Font-Bold="true"></asp:RequiredFieldValidator>
                                   
                </div>
              </div>
                                        
                 

              <div class="form-group">
                  <asp:Button ID="Button1" class="button border-0 mt-3" runat="server" Text="Log In" OnClick="Button1_Click" ValidationGroup="Login"/>
                  <asp:Button ID="Button2" class="button border-0 mt-3" runat="server" Text="Cancel" OnClick="Button2_Click" />
                  <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                
              </div>
                     
        </div>
      
      </div>
    </div>
  </section>

</asp:Content>
