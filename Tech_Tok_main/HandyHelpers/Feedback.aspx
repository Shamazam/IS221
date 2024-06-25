<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .breadcrumb
        {
            background-color: white;
            color: inherit;
            line-height: 2;
            padding: 10px 10px 10px 10px;
            text-decoration: none;
        } 
        
        .feedback-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 4em auto 5em auto;
            width: 60%;
            height: auto;
            display: grid;
            background-color:white;
            grid-template-rows: 20px auto auto auto; 
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
        
        .btnSubmit
        {
            padding: 15px 90px;
            border-radius: 25px;
            background-color: white;
            color: black;
            border: 0;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bolder;
            background-color: #a4bbe0;
        }
        .btnSubmit:hover {
            background-color: #0000ff; 
			color: #fff; 
        }
        
        .account-exist
        {
            
            color: Gray;
        }
        
        .account-exist:hover
        {
            text-decoration: underline;
        }
        
         @media screen and (max-width: 1024px)
        {
                .feedback-frame {
                    width:90%;
                }
                 .input
                {
                  padding: 0 30px;
                  height: 30px;
                  font-size: 12px;
            
                }
                .input-multi
                {
                    width: auto;
                }
                .btnSubmit
                {
                    font-size: 1em;
                    padding: 15px 40px;
                }  
                .row
                {
                    margin: 3em auto 1em auto;
                }
        }     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <nav class="breadcrumb">
        <asp:HyperLink ID="HyperLink4" runat="server" 
        NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
        &lt;
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="">Feedback</asp:HyperLink>
    </nav>


    <section class="feedback-frame">
        <h1>FeedBack</h1><br />
        <section class="row">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input"></asp:TextBox><br />
                
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="RequiredFieldValidator">*Email Required</asp:RequiredFieldValidator>
        </section>
        <section class="row">
            <asp:Label ID="lblFeedback" runat="server" Text="Feeback"></asp:Label><br />
            <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" CssClass="input-multi"></asp:TextBox>
                
                <br />
                <asp:RequiredFieldValidator ID="rfvFeedback" runat="server" ControlToValidate="txtFeedback"
                    ErrorMessage="RequiredFieldValidator">*Feedback Required</asp:RequiredFieldValidator>

        </section>
        <section class="row">
            <asp:Label ID="lblSuggestion" runat="server" Text="Suggestion"></asp:Label><br />
            <asp:TextBox ID="txtSuggestion" runat="server" TextMode="MultiLine" CssClass="input-multi"></asp:TextBox>
        </section>
        <section class="row">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btnSubmit"/><br /><br />
            <asp:Label ID="lbldone" runat="server" Text=""></asp:Label>

        </section>
        <asp:AccessDataSource ID="adsFeedback" runat="server" 
                    DataFile="~/App_Data/Feedback.mdb" 
                    DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = ?" 
                    InsertCommand="INSERT INTO [Feedback] ( [Email], [Feedback], [Suggestion]) VALUES ( ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Feedback]" 
                    UpdateCommand="UPDATE [Feedback] SET [Email] = ?, [Feedback] = ?, [Suggestion] = ? WHERE [ID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                       
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                        <asp:Parameter Name="Suggestion" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                        <asp:Parameter Name="Suggestion" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
    </section>




   
</asp:Content>

