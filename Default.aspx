<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <a class="heading1">News</a><br />
<div class="blogpostinsert">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="newsID" 
        DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
            <table class="fpnhtable">
                <caption class="frontpagenewshead"><asp:Label ID="Label1" runat="server" Text='<%# Bind("newsTag") %>' /></caption>
                
            
                <tr><td class="fpnhcontent"><asp:Label ID="Label2" runat="server" Text='<%# Bind("newsContent") %>' /></td></tr>
                <br />
                <tr><td ><p class="fpnhfooter">Posted by <a style="font-weight: bold;"><asp:Label ID="newsPosterLabel" runat="server" Text='<%# Bind("newsPoster") %>' /></a>  on  <a style="font-weight: bold;"><asp:Label ID="Label3" runat="server" Text='<%# Bind("newsDate") %>' /></a></p></td></tr>
            
            
            </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:trdb1ConnectionString %>" 
        
        SelectCommand="SELECT newsID, newsTag, newsDate, newsContent, newsPoster FROM trdb_news WHERE (newsDate = (SELECT MAX(newsDate) AS Expr1 FROM trdb_news AS trdb_news_1))">
    </asp:SqlDataSource>
    </div>
</asp:Content>



