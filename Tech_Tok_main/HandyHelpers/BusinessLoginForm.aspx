<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="BusinessLoginForm.aspx.vb" Inherits="BusinessLoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 8em auto 8em auto;
            width: 25em;
            height: 54vh;
            display: grid;
            background-color:white;
            grid-template-rows: auto auto auto auto auto ; 
            text-align: center;
            border-radius: 20px;
        }
        .row
        {
            text-align: center;
        }
        .input
        {
          padding: 0 40px;
          height: 40px;
          font-size: 16px;
          background: none;
          border: none;
          outline: none;
          border-radius: 20px;
          border-style: solid;
          border-width: 2px;
          border-color: gray;
          border-radius: 20px;
        }
        .row-btn
        {
            text-align: center;
        }
        .login-btn
        {
            padding: 15px 90px;
            border-radius: 25px;
            background-color: white;
            color: black;
            border: 0;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bolder;
        }

        .login-btn:hover {
            background-color: #0000ff; 
			color: #fff; 
        }
        
        .signup
        {
            margin-top: 10px;
            color: gray;
            text-decoration: none;
        }
        .signup:hover
        {
            text-decoration: underline;
            color: #3064b8;
        }
    
        @media screen and (max-width: 1024px)
        {
            .login-frame
            {
                width: 20em;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="login-frame">
        <h1>Business Login</h1>
        <section class="row">
            <asp:Label ID="lblEmail" runat="server" Text="Email:" for="txtEmail "></asp:Label><br />
             <asp:TextBox ID="txtEmail" runat="server" CssClass = "input"></asp:TextBox><br />
                    
                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="RequiredFieldValidator">*Email Required</asp:RequiredFieldValidator>
                    
        </section>

        <section class="row">
            <asp:Label ID="lblPassword" runat="server" Text="Password:" for="txtPassword" ></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass = "input"></asp:TextBox><br />
                    
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="RequiredFieldValidator">*Password Required</asp:RequiredFieldValidator>
            
            <section class="row">
                 <asp:Label ID="lblError" runat="server"></asp:Label>
            </section>

            <section class="row">
                <asp:Button ID="btnlogin" runat="server" Text="Login"  CssClass="login-btn"/>
            </section>

            <section class="signup">
                <asp:HyperLink ID="HyperLink1" 
            runat="server" NavigateUrl="~/RegisterFormBusiness.aspx" CssClass = "signup">Don&#39;t have an account?</asp:HyperLink>
            </section>

        
        </section>




    </section>







</asp:Content>

