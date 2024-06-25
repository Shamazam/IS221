<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="AddClient.aspx.vb" Inherits="AddClient" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .form-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 4em auto 5em auto;
            width: 40em;
            height: 69vh;
            display: grid;
            background-color: White;
            grid-template-rows: 8em 8em 8em; 
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
        
        .btnAdd
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
        .btnAdd:hover {
            background-color: #0000ff; 
			color: #fff; 
        }
        .breadcrumb
        {
            background-color: white;
            color: inherit;
            line-height: 2;
            padding: 10px 10px 10px 10px;
            text-decoration: none;
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
            .form-frame
            {
                width: 22em;
            }
        
        
            .input
            {
               padding: 0 30px;
               height: 30px;
               font-size: 12px;
            
            }
            .btnAdd
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

    <nav class="breadcrumb">
        <asp:HyperLink ID="HyperLink4" runat="server" 
        NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
        &lt;
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="">Add Client</asp:HyperLink>
    </nav>
    
    <section class= "form-frame">
        <h1>Add Client</h1>
        <section class="row">
            <asp:Label ID="lblEmail" runat="server" Text="Client Email"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="RequiredFieldValidator">*Required Client Email</asp:RequiredFieldValidator>
        </section>

        <section class="row">
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btnAdd" />
        </section>

        <section class="row">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </section>
             
                
                <asp:AccessDataSource ID="adsClient" runat="server" 
                    DataFile="~/App_Data/Business.mdb" 
                    DeleteCommand="DELETE FROM [Client] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [Client] ([ClientEmail], [BusinessEmail]) VALUES (?, ?)" 
                    SelectCommand="SELECT [ClientEmail], [BusinessEmail], [ID] FROM [Client]" 
                    UpdateCommand="UPDATE [Client] SET [ClientEmail] = ?, [BusinessEmail] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClientEmail" Type="String" />
                        <asp:Parameter Name="BusinessEmail" Type="String" />
                        
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClientEmail" Type="String" />
                        <asp:Parameter Name="BusinessEmail" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
    </section>






    
</asp:Content>

