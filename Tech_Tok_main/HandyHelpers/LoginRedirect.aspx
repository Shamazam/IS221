<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="LoginRedirect.aspx.vb" Inherits="LoginRedirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 4em auto 15em auto;
            width: 40em;
            height: 50vh;
            background-color:white;
            display: grid;
            grid-template-rows: auto auto; 
            text-align: center;
            border-radius: 20px;
        }
        .row
        {
            margin: 3em auto 3em auto;
            margin-bottom: 25px;
        }
        .login-frame a
        {
            padding: 15px 90px;
            border-radius: 25px;
            background-color: white;
            color: black;
            border: 0;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bolder;
            text-decoration: none;
            margin-bottom: 1.5em;
        }
        .login-frame a:hover
        {  
            background-color: #0000ff; 
			color: #fff; 
        }
         @media screen and (max-width: 1024px)
        {
            .login-frame {
                    width: 22em;
                    margin: 4em auto 5em auto;
                }
        
                .row
                {
                    margin: 3em auto 2em auto;
                    font-size:x-small;
            
                }
        
        }     
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <section class="login-frame">
        <h1>Login Redirection</h1>
        <section class="row">
            <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="link"
                    NavigateUrl="~/CustomerLoginForm.aspx">Login as a Customer</asp:HyperLink>
        </section>
        
        <section class="row">
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link"
                    NavigateUrl="~/BusinessLoginForm.aspx">Login as a Business</asp:HyperLink>
        </section>
    </section>



</asp:Content>

