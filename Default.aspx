<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
<a class="heading1">News</a>
<div class="blogpostinsert">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="newsID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="newsID" HeaderText="newsID" InsertVisible="False" 
                ReadOnly="True" SortExpression="newsID" />
            <asp:BoundField DataField="newsTag" HeaderText="newsTag" 
                SortExpression="newsTag" />
            <asp:BoundField DataField="newsDate" HeaderText="newsDate" 
                SortExpression="newsDate" />
            <asp:BoundField DataField="newsContent" HeaderText="newsContent" 
                SortExpression="newsContent" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:trdb1ConnectionString %>" 
        SelectCommand="SELECT newsID, newsTag, newsDate, newsContent FROM trdb_news WHERE (newsDate = (SELECT MAX(newsDate) AS Expr1 FROM trdb_news AS trdb_news_1))">
    </asp:SqlDataSource>
    </div>
</asp:Content>



