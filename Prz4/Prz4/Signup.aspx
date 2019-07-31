<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Prz4.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section class="section-margin">
    <div class="container">
      <div class="row">
                  <div class="col-lg-6 col-xl-5 align-self-center mb-5 mb-lg-0">
                    
                      
              <div class="form-group">
                <div class="input-group">
                         <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                       <h2 style= "color:mediumpurple">Sign-Up Form</h2>
                             </div>
                </div>
              </div>
              
              <div class="form-group">
                <div class="input-group">
                       <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                    <h2>Name:</h2>
                          </div>
                    <asp:TextBox ID="txtName" class="auto-style2" runat="server" placeholder="   Name " style="border: 2px solid" Width="184px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" controltovalidate="txtName" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                </div>
              </div>


                      <div class="form-group">
                <div class="input-group">
                       <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                    <h2>Age:</h2>
                          </div>
                    <asp:TextBox ID="textAge" class="auto-style2" placeholder="  Age" runat="server" style="border: 2px solid" Width="184px"></asp:TextBox>
                    <asp:Label ID="lblAge" runat="server" Text=" "></asp:Label> 
                  </div>
              </div>

                    <div class="form-group">
                <div class="input-group">
                       <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                    <h2>Sex:</h2>
                          </div>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Sex" /><asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Sex" />
                </div>
              </div>
                    
              <div class="form-group">
                <div class="input-group">
                  <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                 <h2>Country:<asp:DropDownList ID="DropDownList1" runat="server" Width="400" CssClass="mt-0" ForeColor="Brown">
                          <asp:ListItem Text="USA" ></asp:ListItem>
                          <asp:ListItem Text="China"></asp:ListItem>
                          <asp:ListItem Text="Nepal"></asp:ListItem>
                          <asp:ListItem Text="India"></asp:ListItem>
                          <asp:ListItem Text="Japan"></asp:ListItem>
                          <asp:ListItem Text="Australia"></asp:ListItem>
                          <asp:ListItem Text="England"></asp:ListItem>
                          <asp:ListItem Text="Korea"></asp:ListItem>
                    </asp:DropDownList>
                 
                      </h2>
                    </div>
                 
                </div>
              </div>

                <div class="form-group">
                <div class="input-group">
                  <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                 <h2>Email:</h2>
                    </div>
                    <asp:TextBox ID="textEmail" runat="server" class="form-control" placeholder="   Email" style="border: 2px solid"></asp:TextBox>
                     
                 
                </div>
              </div>

                      
                <div class="form-group">
                <div class="input-group">
                  <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                 <h2>Password:</h2>
                    </div>
                    <asp:TextBox ID="textPassword" type="password" runat="server" class="form-control" placeholder="   Password" style="border: 2px solid"></asp:TextBox>
                     
                 
                </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
                 <h2>Upload Photo:</h2>
                    </div>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="100" />
                 
                </div>
              </div>
                                          
              <div class="form-group">
                  <asp:Button ID="Button1" class="button border-0 mt-3" runat="server" Text="Register" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" class="button border-0 mt-3" runat="server" Text="Cancel" OnClick="Button2_Click" />

              </div>
                      <div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView> 
                      </div>
                   
        </div>
      
      </div>
    </div>
  </section>

</asp:Content>
