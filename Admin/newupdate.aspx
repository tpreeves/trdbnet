<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="newupdate.aspx.vb" Inherits="Admin_newupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="contentheading">Post a news update</p>
    <div class="blogpostpic">
        <a style="font-size: large; font-family: segoe ui;">Post a photo for your news update</a>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
    <div class="blogpostinsert">
        
            <table  class="blogformview"  >
            
                <tr><td>Title/Tag</td><td><asp:TextBox ID="newsTagTextBox" runat="server" Text='<%# Bind("newsTag") %>' Width="300px" /></td></tr>
                
                <tr><td>Content</td><td><asp:TextBox ID="newsContentTextBox" runat="server" cssclass="resize" Text='<%# Bind("newsContent") %>' Height="200px" TextMode="MultiLine" Width="500px" /></td></tr>
                
            </table>
            <br />
            <br />
         <asp:Button ID="InsertButton" runat="server" CausesValidation="True" OnClick="InsertButton_Click" CommandName="Insert" Text="Post" />
         &nbsp&nbsp<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:trdb1ConnectionString %>" 
            DeleteCommand="DELETE FROM [trdb_news] WHERE [newsID] = @newsID" 
            InsertCommand="INSERT INTO [trdb_news] ([newsTag], [newsDate], [newsContent]) VALUES (@newsTag, GETDATE(), @newsContent)" 
            SelectCommand="SELECT * FROM [trdb_news]" 
            UpdateCommand="UPDATE [trdb_news] SET [newsTag] = @newsTag, [newsDate] = @newsDate, [newsContent] = @newsContent WHERE [newsID] = @newsID">
            <DeleteParameters>
                <asp:Parameter Name="newsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="newsTag" Type="String" />
                <asp:Parameter Name="newsDate" Type="DateTime" />
                <asp:Parameter Name="newsContent" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="newsTag" Type="String" />
                <asp:Parameter Name="newsDate" Type="DateTime" />
                <asp:Parameter Name="newsContent" Type="String" />
                <asp:Parameter Name="newsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
         
    </div>
</asp:Content>


