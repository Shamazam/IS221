<%@ Page Title="" Language="VB" MasterPageFile="~/HandyHelpers.master" AutoEventWireup="false" CodeFile="BusinessPage.aspx.vb" Inherits="BusinessPage" %>

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
            margin-bottom: 3em;
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
        
        .column
        {
            display: grid;
            grid-template-rows: auto auto auto auto;
            margin-top: 3em;
            text-align: center;
        }
        
        .row
        {
            margin-top: 3em;
        }
        
        h1
        {
             text-align:center;   
        }
         .input-multi
        {
              padding: 0 40px;
              height: 180px;
              width: 100%;
              font-size: 16px;
              background: none;
              border: none;
              outline: none;
              border-style: solid;
              border-width: 2px;
              border-color: gray;
              border-radius: 20px; 
        }
        
        .review-btn
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

        .review-btn:hover {
            background-color: #0000ff; 
			color: #fff;
        }
        @media screen and (max-width: 1024px)
        {
            .business-info
            {
                width: 80%;
               
                margin-bottom:  10em;
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
            
            .input-multi
            {
                width: 120px;
            }
        
            .review-btn
            {
                font-size: 1em;
                padding: 15px 40px;
            } 
        }
        
   
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <nav class="breadcrumb">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RepairProjects.aspx">Repair Projects</asp:HyperLink>
        &lt;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="">Business Page</asp:HyperLink>
    </nav>


    <h1>Business Page</h1>
    <section class="business-info">
        
        <section class="column">
            <section class="row">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="adsBusinessName" ForeColor="#333333" 
                GridLines="None" Width="150px">
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
                CellPadding="4" DataSourceID="adsServices" ForeColor="#333333" 
        GridLines="None" Width="150px">
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
                CellPadding="4" DataSourceID="adsAbout" ForeColor="#333333" 
        GridLines="None" Width="150px">
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
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="adsBusinessReview" ForeColor="#333333" 
                GridLines="None" Width="150px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
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
        
        <section class="column">
            <section class="row">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="adsAddress" ForeColor="#333333" GridLines="None" 
                Width="150px">
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
                ForeColor="#333333" GridLines="None" Width="150px">
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
                GridLines="None" Width="150px">
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
                <asp:Label ID="lblReview" runat="server" Text="Add Review"></asp:Label><br />
                <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine" CssClass="input-multi"></asp:TextBox><br /><br />
                <asp:Button ID="btnReview" runat="server" Text="Review" CssClass="review-btn" /><br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
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
            <asp:AccessDataSource ID="adsReview" runat="server" 
                DataFile="~/App_Data/User.mdb" 
                DeleteCommand="DELETE FROM [Review] WHERE [ID] = ?" 
                InsertCommand="INSERT INTO [Review] ([ClientEmail], [Review], [BusinessEmail]) VALUES (?, ?, ?)" 
                SelectCommand="SELECT [ClientEmail], [Review], [BusinessEmail], [ID] FROM [Review]" 
                UpdateCommand="UPDATE [Review] SET [ClientEmail] = ?, [Review] = ?, [BusinessEmail] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClientEmail" Type="String" />
                    <asp:Parameter Name="Review" Type="String" />
                    <asp:Parameter Name="BusinessEmail" Type="String" />
                    
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClientEmail" Type="String" />
                    <asp:Parameter Name="Review" Type="String" />
                    <asp:Parameter Name="BusinessEmail" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsPhoneContact" runat="server" 
                DataFile="~/App_Data/Business.mdb" 
                SelectCommand="SELECT [PhoneContact] FROM [Business] WHERE ([Email] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="adsBusinessReview" runat="server" 
                DataFile="~/App_Data/User.mdb" 
                SelectCommand="SELECT [Review] FROM [Review] WHERE ([BusinessEmail] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblEmail" Name="BusinessEmail" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>








</asp:Content>

