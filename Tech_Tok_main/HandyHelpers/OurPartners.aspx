<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="OurPartners.aspx.vb" Inherits="OurPartners" %>

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
            height:auto;
            padding: 0.7em 4em 4em 4em;
            margin-top:1em;
            margin-bottom: 1em;
        }
        
        .partner-frame-container
        {
            display: grid;
            grid-template-rows: auto auto auto  ;
            padding: 5em auto 5em auto;
            color: black;   
        }


        .partner-logo
        {
            padding-top:0.95em;
            width: 80%;
            margin-left:auto;
            margin-right:auto;
           
    
        }
        .partner-frame
        {
            color: white;
            width: 80%;
            height: auto;
            margin: 45px auto;
            background-color: #639CD9;
            border-radius: 10px;
        }
        
       
        .partner-name
        {
            border-bottom-style: solid;
            border-bottom-width: 3px;
            border-color: White;
            border-width: 80%;
            padding-bottom: 15px;
            padding-top: 15px;
     
        }
        .partner-name h3
        {   
            font-size:2em;
        }

        .partner-desc
        {
            padding-bottom: 25px;
        }
        
        .partner-reason dl{
            text-align:left;
            
        }
        .partner-reason dl dt
        {   
            font-weight:bold;
            font-size:1.2em;
        }
        .partner-reason dl dd
        {
            padding-bottom: 0.95em;
        }
        .lable
        {
            
            color: #fff;
            padding: 0.7em 0.7em 0.7em 0.7em;
            border-radius: 25px;
            text-decoration: none;
        }
        .lable:hover
        {
            
			color: #0000ff;
			text-decoration:underline;
        }
        @media screen and (max-width: 1040px)
         {
            .parent-container
            {
                font-size:0.65em;
            }  
            .partner-frame-container{
                width:90%;
            }
         }

         @media screen and (max-width: 600px){

           .partner-frame-container{
                width:99%;
            }


         }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <section class="parent-container">
        <h1>OUR VALUED PARTNERS</h1>
        <p>Handy Helpers is dedicated to strong collaborations and partnerships that last a lifetime. These alliances enable us to deliver top-notch services and resources to our clients and vendors, whilst ensuring quality and integrity.</p>
        <h2>Some of our partners are:</h2>
        
        <section class="partner-frame-container">
            <section class="partner-frame">
                <section class="partner-logo">
                    <asp:HyperLink ID="HyperLink4" runat="server"  CssClass="lable" NavigateUrl="https://www.vinodpatel.com.fj/"><asp:Image ID="Image1" runat="server" alt="VINOD PATEL LOGO" title="VINOD PATEL LOGO" ImageUrl="~/images/vinodpatel.jpg"></asp:Image></asp:HyperLink>
                </section>
                <section class="partner-name">
                    <h3><asp:HyperLink ID="HyperLink1" runat="server"  CssClass="lable" NavigateUrl="https://www.vinodpatel.com.fj/">VINOD PATEL</asp:HyperLink></h3>
                </section>
                <section class="partner-desc">
                    <p>Vinod Patel and Home and Living is one of Fiji's largest and most trusted hardware building and homeware suppliers. Our partnership with Vinod Patel allows us to offer high-quality materials and tools for all your required projects.</p>
                </section>
            </section>
            
            <section class="partner-frame">
                <section class="partner-logo">
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="lable" NavigateUrl="https://rcmanubhai.com.fj/"><asp:Image ID="Image4" runat="server" alt="R.C. MANUBHAI & CO. PTE LTD LOGO" title="R.C. MANUBHAI & CO. PTE LTD LOGO" ImageUrl="~/images/rcmanu.png"></asp:Image></asp:HyperLink>
                </section>
                <section class="partner-name">
                    <h3><asp:HyperLink ID="HyperLink2" runat="server" CssClass="lable" NavigateUrl="https://rcmanubhai.com.fj/">R.C. MANUBHAI & CO. PTE LTD</asp:HyperLink></h3>
                </section>
                <section class="partner-desc">
                    <p>R.C. Manubhai is also one of the biggest leading hardware store chains in Fiji. Our collaboration with them ensures quality hardware products at your doorstep.</p>
                </section>
            </section>
            <section class="partner-frame">
                <section class="partner-logo">
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="lable" NavigateUrl="https://dayalssteels.com/"><asp:Image ID="Image3" runat="server" alt="DAYAL-STEEL PTE LTD LOGO" title="DAYAL-STEEL PTE LTD LOGO" ImageUrl="~/images/dayals.png"></asp:Image></asp:HyperLink>
                </section>
                <section class="partner-name">
                    <h3><asp:HyperLink ID="HyperLink3" runat="server" CssClass="lable" NavigateUrl="https://dayalssteels.com/">DAYAL-STEEL PTE LTD</asp:HyperLink></h3>
                </section>
                <section class="partner-desc">
                    <p>Dayal Steels is an 80-year-old legacy reigning company that has expertise in steel. They have acquired the ISO9001 Quality Management System and ISO14001 and ISO45001 in Environmental and OHS. Our partnership with the steel company ensures that all your projects have high-quality steel integration.</p>
                </section>
            </section>
        </section>
        <h2>Why partner with us?</h2>
        <section class="partner-reason">
            <dl>
                <dt>Trusted expertise</dt><dd>Our partnership allows clients to collaborate with people who have a very high knowledge base in the specified areas regarding construction and repair services.</dd>
                <dt>Quality assurance</dt><dd>Our partners ensure integrity quality and security.</dd>
                <dt>Wide range of services</dt><dd>Various repair and construction needs require different services and products.</dd>
                <dt>Innovative technology</dt><dd>Our collaborators incorporate the latest technology in the industry that helps them improve efficiency.</dd>
                <dt>Professional Standards and Gender Neutral</dt><dd>Our partners believe in professional work ethics and believe in equality hence are gender-neutral and dedicated to treating everyone with respect. </dd>
                <dt>Flexible solutions</dt><dd>The solutions provided for our clients and vendors are budget-friendly and best suited for them.</dd>
            </dl>
        </section>

    </section>


















</asp:Content>

