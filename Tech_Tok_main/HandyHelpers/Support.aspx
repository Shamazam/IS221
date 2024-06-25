<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="Support.aspx.vb" Inherits="Support" %>

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
        p
        {
            text-align:justify;
            font-size:0.85em;
        }
        
        .support-container
        {
            display:flex;
            
            background-color: #d8dfeb;
            border-radius: 20px;
        }
        .support
        {
            padding: 0.8em 0.8em 0.8em 0.8em;
        }

        .faq dl{
            text-align:left;
        }
        .faq dl dt
        {   
            font-weight:bold;
        }

        @media screen and (max-width: 1024px)
         {
            .parent-container
            {
                font-size:0.65em;
            }  
            .support{
                width: auto;
            }
         }

         @media screen and (max-width: 600px){

           .support-container{
                display:block;
            }


         }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <section class="parent-container">
        <h1>Support</h1>
        <section>
                <p>Welcome to our Support Centre. We provide comprehensive assistance to ensure a smooth and satisfactory experience for all our customers and business vendors. Our support page is divided into two sections which are fully equipped to address specific needs and queries that you might have.</p>
        </section>
        <main>
            <section>
                <h2>Overview of our services</h2>
                <p>We specialise in connecting homeowners, commercial property owners and business owners with trusted home repair service providers across Fiji. Our platform facilitates seamless interactions between customers seeking repair and maintenance services and vendors offering these services, ensuring convenience and quality.</p>
            </section>
            <section class="support-container">
                <section class="support">
                    <h2>Customer Support</h2>
                    <h3>Contact Us: </h3>
                    <h4>Email Support:</h4>
                    <p>For inquiries, issues, or feedback, please email us at : <a href="mailto:support@handyhelpers.com">support@handyhelpers.com</a>.<br /> Our customer support team will respond within 24-48 hours. </p>
                    <h4>Phone Support: </h4>
                    <p>Call our support line at: Mobile: <a href="tel:+6799994447">+679-9994447</a> <br /> Phone support is available Monday to Saturday, 9 AM to 10 PM (Fiji Time).</p>
                
                    <section class="faq">
                        <h3>Commonly Asked Questions</h3>
                        <dl>
                            <dt>How do I book a service?</dt><dd>To book a service, browse the list of available services and vendors, select the one that is best suited for your needs and follow the prompts to schedule an appointment.</dd>
                            <br />
                            <dt>How do I cancel or schedule?</dt><dd>Cancellation and rescheduling can be done by contacting the vendors.</dd>
                            <br />
                            <dt>How do I make a review?</dt><dd>Proceed to the Business page of the buiness you are contracted to and at the bottom of the page there should a review box.</dd>
                        </dl>
                    </section>
                
                </section>

                <section class="support">
                    <h2>Vendor Support</h2>
                    <h3>Contact Us: </h3>
                    <h4>Email Support:</h4>
                    <p>For inquiries, issues, or feedback, please email us at : <a href="mailto:vendorsupport@handyhelpers.com.fj ">vendorsupport@handyhelpers.com.fj </a>.<br /> Our vendor support team will respond within 24-48 hours. </p>
                    <h4>Phone Support: </h4>
                    <p>Call our support line at: Mobile: <a href="tel:+6799993337">+679-9993337</a> <br /> Phone support is available 24/7.</p>
                    
                    <section class="faq">
                        <h3>Commonly Asked Questions</h3>
                        <dl>
                            <dt>How do I sign up as a vendor?</dt><dd>To sign up as a vendor you will need to create an account, fill up the required details, thoroughly read the terms of service and submit your application.</dd>
                            <br />
                            <dt>How do I manage my services?</dt><dd>All service management can be done via your account. You can add and update your services as you wish or by contacting the vender support team.</dd>
                        </dl>
                    </section>
                </section>
            </section>
        </main>
    </section>




</asp:Content>

