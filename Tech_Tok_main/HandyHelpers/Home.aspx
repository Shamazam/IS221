<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background-color: White;
        }
        .welcomesection {
			text-align: center; 
			position: relative; /* Establishes positioning context */
			display: flex; 
			justify-content: center; 
			align-items: center; 
			height: 100vh; /* Set the section height to fill the viewport */
			flex-direction: column; /* Stack elements vertically */
		}
		.welcomesection img {
			position: absolute; 
			width: 100%;
			height: 100%; 
			object-fit: cover; 
			z-index: -1; /* Ensure the image is behind the content */
		}
		.welcomesection h1 {
			font-size: 72px; 
			width:65%;
			font-family: 'Playfair Display';
			letter-spacing:-0.03em; 
			color: #000f; 
			margin-top:-100px;
		}
		.welcomesection p {
			color: #0000ff; 
			margin-bottom: 20px; 
			margin-top:-50px;
			font-size: 20px; 
		}
		.welcomesection input {
			padding: 10px 20px; 
			font-size: 18px; 
			background-color: #0000ff; 
			color: #fff; 
			border: none; 
			cursor: pointer; 
		}
		.welcomesection input a
		{
		    color: White;
		    text-decoration: none;
		}
		.welcomesection input:hover {
			background-color: #003366; 
		}
		/* about */
		main {
			display: flex;
			justify-content: space-between; 
		}
        .about_container {
            text-align: left;
            padding: 50px 0; 
        }
        .about-section {
            padding-top: 50px; 
            padding-bottom: 50px; 
		}
		.about-section {
			width: 40%; 
			margin: 50px 20px 50px 50px;
			padding: 20px;
			background-color: #ffff;
			border-radius: 10px;
			border: 3px solid #ccc;
			transition: all 0.3s ease;
			background-size: cover;
			background-position: center;
		}
		.about-section:hover {
			transform: translateY(-5px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.4);
		}
		.about-section h2 {
			margin-top: 0;
		}
		.about-section p {
			line-height: 1.5;
		}
		main {
			position: relative;
		}

		main::before {
			content: '';
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 120%;
			background-image: url('images/about_background_img.jpg');
			background-size: cover;
			background-position: bottom;
			z-index: -1;
		}
		/*services*/
		.container {
			margin: 0 auto; 
			padding: 20px 0;
		}
		.container {
			margin: 0 auto; 
			height: 120%;
			background-image: url('images/servicesbg.png'); 
			background-size: cover;
			background-position: center;
		}
		.offer-title {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 20px;
			display: block;
			width: 95.5%; 
			padding: 10px;
			background-color: #ffff; 
			border: 3px solid #ccc;
			border-radius: 10px;
			text-align: center; 
			margin-left: auto; 
			margin-right: auto; 
		}
        .offer-section {
            display: flex;
            justify-content: center;
            margin-bottom: 50px;	
        }
        .offer-service {
            width: 45%;
            padding: 20px;
            border: 3px solid #ccc;
            border-radius: 10px;
			background-color: #ffff;
            transition: all 0.3s ease;
            padding-top: 30px; 
            padding-bottom: 100px;
        }
        .offer-service:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.4);	
        }
        .offer-service-left {
            margin-right: 20px;
        }
        .offer-service h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .offer-service p {
            font-size: 16px;
		}
		
		@media screen and (max-width: 1100px) 
		{
		  .welcomesection h1
		  { 
		      font-size:2em;
		      margin-top: 2em;
		      margin-bottom: 2em;
		  }  
		    .welcomesection
		    {
		        display:none;
		    }
		   .welcomesection p
		   {    
		       font-size:0.7em;
		   } 
		   .welcomesection button
		   {
		       padding: 5px 10px;
		       font-size: 10px;
		   }
		   .offer-section
		   {
		       display:block;
		       
		       
		   }
		   
		   .offer-service-left
		   {
		       width:90%;
		        margin-left:auto;
		        margin-right:auto;
		        margin-bottom: 1.5em;
		   }
		   
		   .offer-service
		   {
		        width:90%;
		        margin-left:auto;
		        margin-right:auto;
		        margin-bottom: 1.5em;  
		   }
		   container
		   {
		       text-align:center;
		   }
		   
		   .about-section
		   {
		       font-size:15px;
		       width:90%;
		       margin-left:auto;
		        margin-right:auto;
		   }
		}
		
		
		
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="welcomesection">
			<h1>Transforming Houses into Homes, One Repair at a Time!</h1>
			<p>We are a team of talented designers making webites with bootstraps</p>
			<asp:Button ID="Button1" runat="server" Text="Get Started"></asp:Button>
			<img src="images/welcomebg.png" alt="Welcome background" width = "150" height = "50"/>
		</section>
		<main>
			<section> 
				<section class="about-section">
					<h2>About Us</h2>
					<p>Welcome to Handy Helpers! We specialize in providing a platform where businesses can effortlessly showcase and sell their products while offering customers a seamless shopping experience. Our mission is to connect businesses with their target audience, enabling them to expand their reach and increase sales, while providing shoppers with a diverse array of home repair service to explore and purchase with ease. Join us in revolutionizing the way businesses sell and customers shop – welcome to the Handy Helpers community!</p>
				</section>
			</section>
		</main>	
		<section class="container">
			<section class="offer-title">What We Offer</section>
			<section class="offer-section">
				<section class="offer-service offer-service-left">
					<h3>Service for Customers</h3>
	                <p>Welcome to our one-stop destination for all your shopping needs! At our service, we take pride in offering you a diverse selection of home repair service from a multitude of businesses, all gathered conveniently under one roof. Whether you're searching for repair service inside your or outside, around your house in your backyard or your frontyard, or even around your community for people you know who need us, we've got you covered.
					<br/><br/>
					Our platform is designed to provide you with a seamless browsing experience, ensuring that you can browse through our extensive catalog with ease and find your desired home repair service. With intuitive navigation and powerful search capabilities, finding the perfect item is just a few clicks away. Plus, our user-friendly interface makes it simple to compare services and prices between all vendors, so you can make informed decisions.
					<br/><br/>
					Head over to our <a href = "RepairProjects.aspx" > Home Repair Service Projects Tab</a> and start finding the service you need.
					</p>
				</section>
				<section class="offer-service">
					<h3>Service for Businesses</h3>
					<p>Effortlessly showcase and sell your products to a diverse audience, expanding your reach and increasing sales. Benefit from our user-friendly platform, tools, and support to thrive in today's competitive market.
					<br/><br/>
					To find out more about the exclusive services we provide to business wanted to put their mark on the web, head over to our <a href = "ForBusiness.aspx"> For Business  Tab</a>.
					</p>
				</section>
			</section>
		</section>
</asp:Content>

