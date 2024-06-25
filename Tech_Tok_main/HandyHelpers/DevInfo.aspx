<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="DevInfo.aspx.vb" Inherits="DevInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
        
        .container 
        {
            
            width: 60%;
            margin-bottom: 3em;
            margin-top:3em;
            margin-left:auto;
            margin-right:auto;
            background-color:white;
            border-radius: 20px;
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            display: grid;
            
            
            justify-content: center;
            padding-bottom: 2em;
            padding-top:-1.3em;
            grid-template-rows: auto auto auto auto auto;
            text-align: center;  
        }

        .heading {
              font-size: 35px;
              color: black;
              text-align:center;
        }



        .profile
        {
            margin: 1em auto 1em auto;
        }



        .profile .profile-img {
              height: 345px;
              width: 290px;
              border-radius: 25%;
          }


        .profile i
        {
            font-size: 26px;
        }

        .user-name {
          margin-top: 30px;
          font-size: 20px;
        }



        .profile p {
          font-size: 16px;
          margin-top: 20px;
          text-align: justify;
        }

        @media only screen and (max-width: 1150px) {
          

          .profile p {
            text-align: center;
            margin: 20px 60px 80px 60px;
            font-size: 20px;
          }
        }

        @media screen and (max-width: 900px) {
          .heading {
            font-size: 40px;
            
            text-align: center;
          }

          

          

          .profile p {
            margin: 20px 10px 80px 10px;
            font-size:10px;
          }
          
          .container 
            {
                width:22em;
            }
  
        }

        
            
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="heading">Our Team of Developers</h1>
    <section class="container">

        
        
            <section class="profile">
                <asp:Image ID="Image1" alt="Developer Photo" title="Developer Photo" runat="server" Width="260px" CssClass="profile-img" ImageUrl="~/images/Sharvik.jpg"></asp:Image>
            
                <h3 class="user-name">Sharvik shivam sharma</h3>
                <p>Email: <a href="mailto:Sharviksharma0@gmail.com">Sharviksharma0@gmail.com</a><br />Program: Bachelor of Network Engineering. <br />Student ID: S11220315<br /> <a href="https://www.instagram.com/shar_fj?igsh=ZHh3aGFrZ2w3dXJj"><i class="ion-social-instagram-outline"></i></a></p>
            </section>
            <section class="profile">
                <asp:Image ID="Image2" runat="server" alt="Developer Photo" title="Developer Photo"  CssClass="profile-img" ImageUrl="~/images/Navneel.jpg"></asp:Image>
            
                <h3 class="user-name">Navneel Prasad</h3>
                <p>Email: <a href="mailto:S11219957@student.usp.ac.fj">S11219957@student.usp.ac.fj</a><br />Program: Bachelor of Network Engineering. <br />Student ID: S11219957<br /> <a href="https://www.instagram.com/nav._.fjx?igsh=MTBoZmg4MTYyeTR1cA=="><i class="ion-social-instagram-outline"></i></a></p>
        
        
            </section>
            <section class="profile">
                <asp:Image ID="Image4" runat="server" alt="Developer Photo" title="Developer Photo" Width="380px"  CssClass="profile-img" ImageUrl="~/images/Shamal.jpg"></asp:Image>
            
                <h3 class="user-name">Shamal Srishnil Prasad</h3>
                <p>Email: <a href="mailto:shamalfiji@gmail.com">shamalfiji@gmail.com</a><br />Program: Bachelor of Software Engineering. <br />Student ID: S11219545<br /> <a href="https://www.instagram.com/shamazzzam?igsh=MWFmaHF6cHNtbmI0dA%3D%3D&utm_source=qr"><i class="ion-social-instagram-outline"></i></a></p>
        
        
            </section>
            <section class="profile">
                <asp:Image ID="Image3" runat="server" alt="Developer Photo" title="Developer Photo"  CssClass="profile-img" ImageUrl="~/images/Daniyal.jpg"></asp:Image>
            
                <h3 class="user-name">Daniyal Sultan</h3>
                <p>Email: <a href="mailto:Danifiji@gmail.com">Danifiji@gmail.com</a><br />Program: Bachelor of Software Engineering. <br />Student ID: S11215227<br /> <a href="https://www.instagram.com/_sultanzz_/"><i class="ion-social-instagram-outline"></i></a></p>
        
        
            </section>
            <section class="profile">
                <asp:Image ID="Image5" runat="server" alt="Developer Photo" title="Developer Photo" Width="380px"  CssClass="profile-img" ImageUrl="~/images/Shreshtha.jpg"></asp:Image>
            
                <h3 class="user-name">Shreshtha Shreha Sharma </h3>
                <p>Email: <a href="mailto:S11220274@student.usp.ac.fj">S11220274@student.usp.ac.fj</a><br />Program: Bachelor of Science(CS/IS). <br />Student ID: S11220274<br /> <a href="https://www.instagram.com/shreha._.07?igsh=MWt4YnAxZndxc2J2cg=="><i class="ion-social-instagram-outline"></i></a></p>
        
        
            </section>
        
    
    </section>






</asp:Content>

