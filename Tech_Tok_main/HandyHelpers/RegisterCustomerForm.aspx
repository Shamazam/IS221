<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="RegisterCustomerForm.aspx.vb" Inherits="RegisterCustomerForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
            .signup-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 4em auto 5em auto;
            width: 40em;
            height: auto;
            display: grid;
            background-color:white;
            grid-template-rows: auto 80px 80px 80px 80px 80px 100px 20px 80px 80px; 
            text-align: center;
            border-radius: 20px;
        }
        p
        {
            color: Gray;
            font-size: 1em;
        }
            .input
        {
          padding: 0 40px;
          height: 40px;
          font-size: 16px;
          background: none;
          border: none;
          outline: none;
          border-style: solid;
          border-width: 2px;
          border-color: gray;
          border-radius: 20px;
          
        }
        .row
        {
            margin: 3em auto 3em auto;
        }
        
        .btnSignup
        {
            padding: 15px 90px;
            border-radius: 25px;
            background-color: white;
            color: black;
            border: 0;
            justify-content: center;
            font-size: 1.2em;
            background-color: #a4bbe0;
            font-weight: bolder;
        }
        .btnSignup:hover {
            background-color: #0000ff; 
			color: #fff; 
        }
        p
        {
            color: Gray;
            font-size: 0.9em;
        }
        .account-exist
        {
            
            color: Gray;
        }
        
        .account-exist:hover
        {
            text-decoration: underline;
            color:#0000ff
        }
      
        @media screen and (max-width: 1024px)
        {
            .signup-frame {
                    width: 22em;
                    text-align:center;
                }
        
        
                 .input
                {
                  padding: 0 30px;
                  height: 30px;
                  font-size: 12px;
            
                }
                .btnSignup
                {
                    font-size: 1em;
                    padding: 15px 40px;
                }  
                .row
                {
                    margin: 2em auto 2em auto;
                }
        }   


             
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <section class="signup-frame">
        <h1>Customer Registration</h1>

        <section class="row">
            <asp:Label ID="lblName" runat="server" Text="Name" for="txtName"></asp:Label><br />
             <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox><br />
                
                 <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                     ErrorMessage="RequiredFieldValidator">*Required Name</asp:RequiredFieldValidator>
        </section>

        <section class="row">
            <asp:Label ID="lblEmail" runat="server" Text="Email" for="txtEmail"></asp:Label><br />
             <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input"></asp:TextBox><br />
                
                 <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                     ErrorMessage="RequiredFieldValidator">*Email Required</asp:RequiredFieldValidator>
        </section>

        <section class="row">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox><br />
                
                 <asp:RequiredFieldValidator ID="rfv0" runat="server" ControlToValidate="txtPassword"
                     ErrorMessage="RequiredFieldValidator">*Password Required</asp:RequiredFieldValidator><br />
                      

        </section>

         <section class="row">
             
             <asp:RegularExpressionValidator ID="rfvPassword" runat="server" 
                     ControlToValidate="txtPassword" ErrorMessage="RegularExpressionValidator" 
                     ValidationExpression="^[a-zA-Z0-9]{8,}$">*Minimum Size: 8 <br />*Must Have combination of letters and numbers <br /> eg. S21B78B8</asp:RegularExpressionValidator>
        </section>

        <section class="row">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label><br />
            <asp:DropDownList ID="ddlAddress" runat="server" DataSourceID="xmlAddress" 
                     DataTextField="name" DataValueField="name" CssClass="input"> 
                 </asp:DropDownList>
                 <br />
                 <asp:XmlDataSource ID="xmlAddress" runat="server" 
                     DataFile="~/App_Data/Address.xml"></asp:XmlDataSource>
            
        </section>

        <section class="row">
            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label><br />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="input"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]{7,}$" ControlToValidate="txtPhone"
                    ErrorMessage="RegularExpressionValidator">*Incorrect Phone Number</asp:RegularExpressionValidator>
        </section>

        <section class="row">
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btnSignup" />
            &nbsp;<asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btnSignup"/><br />
            <asp:Label ID="lblText" runat="server"></asp:Label><br />
        </section>

        <section class="row">
             
            
        </section>

        

        <section class="row">
            <p>Registering with us means you comply with our <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TermsNCondition.aspx" CssClass="account-exist" >Terms of service</asp:HyperLink></p>
           
            <p><asp:HyperLink 
                     ID="hylLogin" runat="server" 
                     NavigateUrl="~/CustomerLoginForm.aspx" CssClass="account-exist">Already Have an Account?</asp:HyperLink></p>
                 

        </section>

        <section class="row">
               
              <p>Are you a Business looking to work with up? Head over to our
                 <asp:HyperLink ID="hylBusinessReg" runat="server" CssClass="account-exist"
                     NavigateUrl="~/RegisterFormBusiness.aspx">Business Portal</asp:HyperLink>
                &nbsp;to Register and start working with us.</p><br />

        </section>
        
    </section>
    <asp:AccessDataSource ID="adsCustomer" runat="server" 
                     DataFile="~/App_Data/User.mdb" 
                     DeleteCommand="DELETE FROM [Customer] WHERE [Email] = ?" 
                     InsertCommand="INSERT INTO [Customer] ([Email], [Name], [Password], [Address], [PhoneContact]) VALUES (?, ?, ?, ?, ?)" 
                     SelectCommand="SELECT * FROM [Customer]" 
                     
                     UpdateCommand="UPDATE [Customer] SET [Name] = ?, [Password] = ?, [Address] = ?, [PhoneContact] = ? WHERE [Email] = ?">
                     <DeleteParameters>
                         <asp:Parameter Name="Email" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="Email" Type="String" />
                         <asp:Parameter Name="Name" Type="String" />
                         <asp:Parameter Name="Password" Type="String" />
                         <asp:Parameter Name="Address" Type="String" />
                         <asp:Parameter Name="PhoneContact" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="Name" Type="String" />
                         <asp:Parameter Name="Password" Type="String" />
                         <asp:Parameter Name="Address" Type="String" />
                         <asp:Parameter Name="PhoneContact" Type="String" />
                         <asp:Parameter Name="Email" Type="String" />
                     </UpdateParameters>
                 </asp:AccessDataSource>
</asp:Content>

