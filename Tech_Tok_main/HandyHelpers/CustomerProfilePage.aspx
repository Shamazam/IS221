<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="CustomerProfilePage.aspx.vb" Inherits="CustomerProfilePage" %>

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
         h1
        {
             text-align:center;   
        }
        .customer-info
        {
            width: 60%;
            margin-bottom: 10em;
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
        
        .row
        {
            margin: 1em auto 1em auto;
        }
        
        
        
        @media screen and (max-width: 1024px)
        {
            .customer-info
            {
                width: 22em;
                margin-bottom: 5em;
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
        <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
        &lt;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="">Customer Profile</asp:HyperLink>
    </nav>
    <h1>Your Profile</h1>
    <section class="customer-info">
        
            <section class="row">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsName" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
            </section>
            <section class="row">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsPhone" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PhoneContact" HeaderText="PhoneContact" 
                            SortExpression="PhoneContact" />
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
            </section>
            <section class="row">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Email" DataSourceID="adsEmail" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                            SortExpression="Email" />
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
            </section>
            <section class="row">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsAddress" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
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
            </section>
            <asp:Label ID="Label1" runat="server" Text="Email of business Under Contract or Contracted previously"></asp:Label>
            <section class="row">
                
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsBusinessContract" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="BusinessEmail" HeaderText="BusinessEmail" 
                            SortExpression="BusinessEmail" />
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
            </section>
    </section>


    <asp:Label ID="lblEmail" runat="server" Visible="False"></asp:Label>
                <asp:AccessDataSource ID="adsName" runat="server" 
                    DataFile="~/App_Data/User.mdb" 
                    SelectCommand="SELECT [Name] FROM [Customer] WHERE ([Email] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsEmail" runat="server" 
                    DataFile="~/App_Data/User.mdb" 
                    SelectCommand="SELECT [Email] FROM [Customer] WHERE ([Email] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsPhone" runat="server" 
                    DataFile="~/App_Data/User.mdb" 
                    SelectCommand="SELECT [PhoneContact] FROM [Customer] WHERE ([Email] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsAddress" runat="server" 
                    DataFile="~/App_Data/User.mdb" 
                    SelectCommand="SELECT [Address] FROM [Customer] WHERE ([Email] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsBusinessContract" runat="server" 
                    DataFile="~/App_Data/Business.mdb" 
                    SelectCommand="SELECT [BusinessEmail] FROM [Client] WHERE ([ClientEmail] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="ClientEmail" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>






   
</asp:Content>

