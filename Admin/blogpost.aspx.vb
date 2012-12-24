Imports System.Data

Imports System.Data.SqlClient

Imports System.IO


Partial Class Admin_blogpost
    Inherits System.Web.UI.Page

    


    Sub UploadButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView2.ItemInserted

        ' Specify the path on the server to
        ' save the uploaded file to


        ' Before attempting to perform operations
        ' on the file, verify that the FileUpload 
        ' control contains a file.
        If (FileUpload2.HasFile) Then
            ' Get the name of the file to upload.
            Dim fileName As String = FileUpload2.FileName

            ' Append the name of the file to upload to the path.


            ' Call the SaveAs method to save the 
            ' uploaded file to the specified path.
            ' This example does not perform all
            ' the necessary error checking.               
            ' If a file with the same name
            ' already exists in the specified path,  
            ' the uploaded file overwrites it.
            FileUpload2.SaveAs(Server.MapPath("~\pics\uploaded\") + fileName)

            ' Notify the user of the name the file
            ' was saved under.

        End If

    End Sub

End Class
