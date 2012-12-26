﻿
Imports System.Data

Imports System.Data.SqlClient

Imports System.IO
Imports System.Web.UI.WebControls.FormView

Partial Class Admin_newblog
    Inherits System.Web.UI.Page


    Sub UploadButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        ' Specify the path on the server to
        ' save the uploaded file to


        ' Before attempting to perform operations
        ' on the file, verify that the FileUpload 
        ' control contains a file.
        If (FileUpload2.HasFile) Then
            ' Get the name of the file to upload.
            Dim original1 As String = titleTextBox.Text
            Dim original2 As Date = Date.Now

            Dim firstpart As String
            Dim lastpart As String

            original1 = Replace(original1, " ", "")

            firstpart = Left(original1, 7)
            lastpart = CStr(original2.Month) + CStr(original2.Year)

            Dim fileName As String = lastpart + firstpart + ".jpg"

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

