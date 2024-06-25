<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="RepairProjects.aspx.vb" Inherits="RepairProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .repair-page-frame
        {
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            margin: 4em auto 5em auto;
            width: 40em;
            padding: 0 10px 0 10px;
            background-color:white;
            display: grid;
            grid-template-rows: auto auto auto auto auto auto auto;
            text-align: center;
            border-radius: 20px;  
            margin-left: auto;
            margin-right: auto;
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
           margin: 1.5em auto 1.5em auto;
        }
        
        .filter-add
        {
            padding: 15px 90px;
            border-radius: 25px;
            
            color: black;
            border: 0;
            background-color: #a4bbe0;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bolder;
        }

        .filter-add:hover {
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
         GridView
        {
            width: 100%;
        }
         @media screen and (max-width: 1024px)
        {
            .repair-page-frame {
                    width: 90%;
                    margin-left: auto;
                    margin-right: auto;
                    font-size:0.8em;
                }
                .input-multi
                {
                    width: 120px;
                }
        
                 .input
                {
                  padding: 0 30px;
                  height: 30px;
                  font-size: 12px;
            
                }
                .filter-add
                {
                    font-size: 1em;
                    padding: 15px 40px;
                } 
                GridView
                {
                    font-size:1em;
                } 
                .row
                {
                    margin-left: auto;
                    margin-right: auto;
                }
        }   
        @media screen and (max-width: 600px)
        {
        
            .repair-page-frame {
            
                font-size:0.5em;
            }
        
        
        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="repair-page-frame">
        <h1>Repair Projects</h1>
        <h2>Filter</h2>
        
        <section class="row">
            <asp:Label ID="Label1" runat="server" Text="Select your area and the type of service you would like: "></asp:Label><br /><br />
            <asp:Label ID="lblServices" runat="server" Text="Services"></asp:Label><br />
            <asp:DropDownList ID="ddlServices" runat="server" DataSourceID="xmlServices"  CssClass="input"
                DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:XmlDataSource ID="xmlServices" runat="server" 
                DataFile="~/App_Data/RepairServices.xml"></asp:XmlDataSource>
        </section>

        <section class="row">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label><br />
            <asp:DropDownList ID="ddlAddress" runat="server" DataSourceID="xmlAddress"  CssClass="input"
                DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:XmlDataSource ID="xmlAddress" runat="server" 
                DataFile="~/App_Data/Address.xml"></asp:XmlDataSource>
        </section>

        <section class="row">
            <asp:Button ID="btnFilter" runat="server" Text="Fliter"  CssClass="filter-add" /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="If Nothing shows after Filtering then there is No Business that provide the selected service in the selected area."></asp:Label><br /><br />
        </section>

        <section class="row">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CssClass="GridView"
                AutoGenerateColumns="False" CellPadding="4" 
                DataSourceID="adsBusiness" ForeColor="#333333" GridLines="None" 
                Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                        SortExpression="Email" />
                    <asp:BoundField DataField="BusinessName" HeaderText="BusinessName" 
                        SortExpression="BusinessName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="PhoneContact" HeaderText="PhoneContact" 
                        SortExpression="PhoneContact" />
                    <asp:BoundField DataField="Services" HeaderText="Services" 
                        SortExpression="Services" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:AccessDataSource ID="adsBusiness" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                
                SelectCommand="SELECT * FROM [Business Query] WHERE (([Address] = ?) AND ([Services] = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlAddress" Name="Address" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlServices" Name="Services" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </section>

        <section class="row">
            <asp:TextBox ID="txtSearch" runat="server"  CssClass="input"></asp:TextBox>
            &nbsp;<asp:Button ID="btnGo" runat="server" UseSubmitBehavior="false" Text="Go" CssClass="filter-add"  />
        </section>

        <section class="row">
            
            <asp:Label ID="lblinfo" runat="server" 
                Text="Copy and paste or write out the email of the interested company to visit Business page"></asp:Label>
               
        </section>

        <section class="row">
            <asp:Label ID="lblError" runat="server"></asp:Label>
             
        </section>

        

        
    
    
    </section>




    
</asp:Content>

