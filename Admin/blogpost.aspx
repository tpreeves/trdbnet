<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="blogpost.aspx.vb" Inherits="Admin_blogpost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div style="vertical-align: bottom;">  
        <asp:FileUpload ID="FileUpload2" runat="server" />
    </div>
    <div style="vertical-align: top;">
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="blogID" DataSourceID="SqlDataSource1" DefaultMode="Insert" >
        <InsertItemTemplate>
            <table >
                <tr ><td>Post Title</td><td><asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' Width="400px" /></td></tr>
                <br />
                <tr><td>Posted by</td><td><asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' Width="200px" /></td></tr>
                <br />
                <tr><td>Tag</td><td><asp:TextBox ID="tagTextBox" runat="server" Text='<%# Bind("tag") %>' Width="200px" /></td></tr>
                <br />
                <tr><td >Content</td><td><asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' TextMode="MultiLine" Height="200px" Width="500px" /></td></tr>
                <br />
            
           </table>
           <br /><br />
           <asp:Button ID="UploadButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Post Blog"  OnClick="UploadButton_Click" >
           </asp:Button>    
           <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           <br />
           <asp:Label ID="UploadStatusLabel" runat="server"> </asp:Label>
          
        </InsertItemTemplate>
        
    </asp:FormView>
    
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:trdb_cs %>" 
        DeleteCommand="DELETE FROM [trdb_posts] WHERE [blogID] = @blogID" 
        InsertCommand="INSERT INTO [trdb_posts] ([postdate], [title], [username], [tag], [content]) VALUES (GETDATE(), @title, @username, @tag, @content)" 
        SelectCommand="SELECT * FROM [trdb_posts]" 
        UpdateCommand="UPDATE [trdb_posts] SET [postdate] = @postdate, [title] = @title, [username] = @username, [tag] = @tag, [content] = @content WHERE [blogID] = @blogID">
        <DeleteParameters>
            <asp:Parameter Name="blogID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="postdate" Type="DateTime" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="tag" Type="String" />
            <asp:Parameter Name="content" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="postdate" Type="DateTime" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="tag" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="blogID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <br />
    
    </div>
           
    
    
</asp:Content>


