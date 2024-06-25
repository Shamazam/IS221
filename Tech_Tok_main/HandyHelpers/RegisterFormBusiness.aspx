<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="RegisterFormBusiness.aspx.vb" Inherits="RegisterFormBusiness" %>

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
            grid-template-rows: 30px 80px 80px 80px 80px 80px 100px auto auto auto 60px;
            text-align: center;
            border-radius: 20px;  
        }
         p
        {
            color: Gray;
            font-size: 0.9em;
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
        .input-multi
        {
          padding: 0 40px;
          height: 180px;
          width: 380px;
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
        
        .signup-btn
        {
            padding: 15px 90px;
            border-radius: 25px;
            background-color: white;
            color: black;
            border: 0;
            background-color: #a4bbe0;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bolder;
        }

        .signup-btn:hover {
            background-color: #0000ff; 
			color: #fff;
        }
        
        .account-exist 
        {
            color: Gray;
            margin-top: 0.7em;     }
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
             .input-multi
             {
                 width: auto;
             }
            
             .input
             {
                 padding: 0 30px;
                 height: 30px;
                 font-size: 12px;
            
             }
              .signup-btn
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
        <h1>Business Registration</h1><br />
        <section class="row">
            
                <asp:Label ID="lblName" runat="server" Text="Business Name" for="txtName"></asp:Label><br />
                <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rfvBusinessName" runat="server" ControlToValidate="txtName"
                    ErrorMessage="RequiredFieldValidator">*Business Name Required</asp:RequiredFieldValidator>

        </section>

        <section class="row">
        <asp:Label ID="lblEmail" runat="server" Text="Email" for="txtEmail"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input"></asp:TextBox><br />
                
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="RequiredFieldValidator">*Required Email</asp:RequiredFieldValidator>

        </section>

        <section class="row">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
             <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox><br />
                
                <asp:RequiredFieldValidator ID="rfvEmail0" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="RequiredFieldValidator">*Required Password</asp:RequiredFieldValidator><br />
                
                <br />
                

        </section>
        <section class="row">
            <asp:RegularExpressionValidator ID="rfvPassword" runat="server" ValidationExpression="^[a-zA-Z0-9]{8,}$" ControlToValidate="txtPassword"
                    ErrorMessage="RegularExpressionValidator">*Minimum Size: 8 <br />*Must Have combination of letters and numbers</asp:RegularExpressionValidator>
        </section>

        <section class="row">
            <asp:Label ID="lblAddress" runat="server" Text="Address" ></asp:Label><br />
            <asp:DropDownList ID="ddlAddress" runat="server" DataSourceID="xmlAddress" CssClass="input" 
                     DataTextField="name" DataValueField="name">
                 </asp:DropDownList>
                 <asp:XmlDataSource ID="xmlAddress" runat="server" 
                     DataFile="~/App_Data/Address.xml"></asp:XmlDataSource>
        </section>
        
        <section class="row">
            <asp:Label ID="lblPhone" runat="server" Text="Telephone/Mobile"></asp:Label><br />
             <asp:TextBox ID="txtContact" runat="server" TextMode="Phone" CssClass="input"></asp:TextBox><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]{7,}$" ControlToValidate="txtContact"
                    ErrorMessage="RegularExpressionValidator">*Incorrect Phone Number</asp:RegularExpressionValidator>
        </section>

        <section class="row">
            <asp:Label ID="lblBackground" runat="server" Text="Business Background"></asp:Label><br />
            <asp:TextBox ID="txtBackground" runat="server" CssClass="input-multi" 
        TextMode="MultiLine" ></asp:TextBox><br />
        </section>

        <section class="row">
        <asp:Label ID="lblServices" runat="server" Text="Services"></asp:Label><br /><br />
            
            <asp:CheckBoxList ID="chkServices" runat="server" 
                    DataSourceID="xmlRepairService" DataTextField="name" DataValueField="name">
                </asp:CheckBoxList>
            
            <br />
                <asp:XmlDataSource ID="xmlRepairService" runat="server" 
                    DataFile="~/App_Data/RepairServices.xml"></asp:XmlDataSource>
        </section>

        

        <section class="row">
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="signup-btn" />
            &nbsp;<asp:Button ID="btnResigter" runat="server" Text="Register" CssClass="signup-btn" /><br />
            <asp:Label ID="lblText" runat="server"></asp:Label>
            
        </section>
        
        <section class="row">
            <p>Registering with us means you comply with our <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TermsNCondition.aspx" CssClass="account-exist" >Terms of service</asp:HyperLink></p>
            <p>Already have an account?<asp:HyperLink ID="hylLogin" runat="server" 
                    NavigateUrl="~/BusinessLoginForm.aspx" CssClass="account-exist" >Login</asp:HyperLink></p>
                
                
                <p>Are You a Customer?<asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/RegisterCustomerForm.aspx" CssClass="account-exist" >Register as Customer</asp:HyperLink></p>
        </section>
        <asp:AccessDataSource ID="adsBusiness" runat="server" 
                    DataFile="~/App_Data/Business.mdb" 
                    DeleteCommand="DELETE FROM [Business] WHERE [Email] = ?" 
                    InsertCommand="INSERT INTO [Business] ([Email], [BusinessName], [Password], [Address], [PhoneContact], [Background]) VALUES (?, ?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Business]" 
                    UpdateCommand="UPDATE [Business] SET [BusinessName] = ?, [Password] = ?, [Address] = ?, [PhoneContact] = ?, [Background] = ? WHERE [Email] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="BusinessName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="PhoneContact" Type="String" />
                        <asp:Parameter Name="Background" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BusinessName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="PhoneContact" Type="String" />
                        <asp:Parameter Name="Background" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </UpdateParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsServices" runat="server" 
                    DataFile="~/App_Data/Business.mdb" 
                    DeleteCommand="DELETE FROM [Services] WHERE (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL )) AND (([Services] = ?) OR ([Services] IS NULL AND ? IS NULL))" 
                    InsertCommand="INSERT INTO [Services] ([Email], [Services]) VALUES (?, ?)" 
                    SelectCommand="SELECT * FROM [Services]">
                    <DeleteParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Services" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Services" Type="String" />
                    </InsertParameters>
                </asp:AccessDataSource>
    </section>




</asp:Content>

