<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="ForBusiness.aspx.vb" Inherits="ForBusiness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        
        .parent-container
        {
            width: 70%;
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            border-radius: 20px;
            background-color:white;
            padding: 0.7em 4em 4em 4em;
            margin-top:1em;
            margin-bottom: 1em;
        }
        .frame-container
        {
            display: grid;
            grid-template-rows: auto auto auto auto auto auto;
            padding: 5em auto 5em auto;
            color: black;   
        }
        .function-frame:hover
         {
            transform: translateY(-5px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
            
        }

        .function-img
        {
            padding-top:0.95em;
            width: 70%;
            margin-left:auto;
            margin-right:auto;
    
        }
        .function-frame
        {
            color: white;
            width: 80%;
            height: auto;
            margin: 45px auto;
            background-color: #639CD9;
            border-radius: 10px;
        }
        .function-title
        {
            border-bottom-style: solid;
            border-bottom-width: 3px;
            border-color: White;
            border-width: 80%;
            padding-bottom: 15px;
            padding-top: 15px;
     
        }
        .function-title h3
        {   
            font-size:2em;
        }

        .function-desc
        {
            padding-bottom: 25px;
        }
         @media screen and (min-width: 2040px)
         {
             .function-img
                {
                    
                    width: 26em;
                    height:16em;
    
                }
         }
        @media screen and (max-width: 1040px)
         {
            .parent-container
            {
                font-size:0.65em;
            }  
            .function-frame{
                width:90%;
            }
         }

         @media screen and (max-width: 600px){

           .function-frame{
                width:99%;
            }


         }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <section class="parent-container">
        <h1>Exclusive Business Functionality</h1>
        <section>
            <p>At Handy Helpers we offer a range of solutions for all your needs. Our page is dedicated to helping you grow and expand your business to maximize your potential and achieve all your goals.</p> 
        </section>
        <h2>Some of the services we offer</h2>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image1" runat="server" alt="Vendor Page Setup" title="Vendor Page Setup" CssClass="function-img" ImageUrl="~/images/vendorpage.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>Setup of vendor page</h3>
                </section>
                <section class="function-desc">
                    <p>Our page allows you to establish an online presence, whereby you can set up an account and display a wide variety of services your business offers. This page is customizable and will attract potential clients and help you to differentiate from other businesses.</p>
                </section>
            </section>
        </section>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image2" runat="server"  alt="Add Client" title="Add Client" CssClass="function-img" ImageUrl="~/images/Addclient.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>Add clients</h3>
                </section>
                <section class="function-desc">
                    <p>The vendor page allows you to seamlessly manage your client base and keep track of client information, service history and current jobs in the queue.</p>
                </section>
            </section>
        </section>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image3" runat="server"  alt="Communication" title="Communication" CssClass="function-img" ImageUrl="~/images/communication.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>Communication</h3>
                </section>
                <section class="function-desc">
                    <p>Our page allows you to establish an online presence, whereby you can set up an account and display a wide variety of services your business offers. This page is customizable and will attract potential clients and help you to differentiate from other businesses.</p>
                </section>
            </section>
        </section>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image4" runat="server"  alt="24/7 Service" title="24/7 Service"  CssClass="function-img" ImageUrl="~/images/alltimeservice.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>24/7 Support</h3>
                </section>
                <section class="function-desc">
                    <p>Gain access to our dedicated team of professionals who are ready to help you round the clock. Our support team can help you easily navigate your way and to help you also resolve client inquiries.</p>
                </section>
            </section>
        </section>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image5" runat="server" alt="Promote Service" title="Promote Service" CssClass="function-img" ImageUrl="~/images/promoteservice.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>Promote Services </h3>
                </section>
                <section class="function-desc">
                    <p>Take advantage of our promotional opportunities to attract clients and grow your business. With added fees, you can participate in featured listings and run special promotions.</p>
                </section>
            </section>
        </section>
        <section class="frame-container">
            <section class="function-frame">
                <section class="function-img">
                    <asp:Image ID="Image6" runat="server"  alt="Leave Review" title="Leave Review" CssClass="function-img" ImageUrl="~/images/review.jpg"></asp:Image>
                </section>
                <section class="function-title">
                    <h3>Customer reviews</h3>
                </section>
                <section class="function-desc">
                    <p>Your setup account can help you monitor and respond to customer reviews and engage with feedback to showcase your commitment to clients and build trust.</p>
                </section>
            </section>
        </section>

    </section>













</asp:Content>

