<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="BusinessProfilePage.aspx.vb" Inherits="BusinessProfilePage" %>

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
        
         .business-info
        {
            width: 60%;
            margin-bottom: 5em;
            margin-top:3em;
            margin-left:auto;
            margin-right:auto;
            background-color:white;
            border-radius: 20px;
            box-shadow: 1px 1px 20px 0 #D5D5D5;
            display: grid;
            grid-template-columns: 30% 30%;
            text-align: center;
            justify-content: center;
            padding-bottom: 2em;
            padding-top:-1.3em;
            
            
          
        }
        
        h1
        {
            text-align:center;
        }
        .lable
        {
            float:left;
            color: #0000ff;
            padding: 0.7em 0.7em 0.7em 0.7em;
            border-radius: 25px;
            text-decoration: none;
        }
        .lable:hover
        {
            background-color: #0000ff; 
			color: #fff;
        }
        .column
        {
            display: grid;
            grid-template-rows: auto auto auto auto;
            margin-top: 3em;
        }
        
        .row
        {
            margin-bottom:2em;
        }
         
        
        @media screen and (max-width: 1024px)
        {
            .business-info
            {
                width: 80%;
               padding-top: 0.5em;
                
                display: block;
                 margin-left:  auto;
                 margin-right: auto;
                grid-template-columns: 0;
            }
            .row
            {
                display: block;
                 margin-left:  auto;
                 margin-right: auto;
            }
            
           
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <nav class="breadcrumb">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
        &lt;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="">Business Profile</asp:HyperLink>
    </nav>

     <h1>Business Profile</h1>
     <section class="business-info">
        
        <section class="column">
            <section class="row">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsBusinessName" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="BusinessName" HeaderText="BusinessName" 
                            SortExpression="BusinessName" />
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="adsServices" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
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
            </section>

            

            <section class="row">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsAbout" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Background" HeaderText="Background" 
                            SortExpression="Background" />
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
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="lable" NavigateUrl="~/AddClient.aspx">Add Client</asp:HyperLink>
            </section>
            

            </section>
            <section class="column">
                <section class="row">
                
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsAddress" ForeColor="#333333" GridLines="None" 
                    Width="88px">
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
            <section class="row">
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Email" DataSourceID="adsEmail" 
                    ForeColor="#333333" GridLines="None" Width="71px">
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
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsPhoneContact" ForeColor="#333333" 
                    GridLines="None">
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
                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="adsBsuinessReview" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ClientEmail" HeaderText="ClientEmail" 
                            SortExpression="ClientEmail" />
                        <asp:BoundField DataField="Review" HeaderText="Review" 
                            SortExpression="Review" />
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

        </section>


        <asp:Label ID="lblEmail" runat="server" Visible="False"></asp:Label>
                
            <asp:AccessDataSource ID="adsBusinessName" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [BusinessName] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsServices" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [Services] FROM [Services] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsEmail" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [Email] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsAbout" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [Background] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsAddress" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [Address] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsPhoneContact" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [PhoneContact] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
                <asp:AccessDataSource ID="adsBsuinessReview" runat="server" 
                    DataFile="~/App_Data/User.mdb" 
                    SelectCommand="SELECT [ClientEmail], [Review] FROM [Review] WHERE ([BusinessEmail] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblEmail" Name="BusinessEmail" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>



  
</asp:Content>

