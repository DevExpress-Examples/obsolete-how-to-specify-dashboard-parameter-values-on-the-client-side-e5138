Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.DataAccess.ConnectionParameters

Namespace Dashboard_ClientSideParameters
	Partial Public Class WebForm1
		Inherits System.Web.UI.Page
		Protected Sub ASPxDashboardViewer1_ConfigureDataConnection(ByVal sender As Object, ByVal e As DevExpress.DashboardWeb.ConfigureDataConnectionWebEventArgs)
			If e.ConnectionName = "nwindConnection" Then

				' Gets connection parameters used to establish a connection to the database.
				Dim parameters As Access97ConnectionParameters = CType(e.ConnectionParameters, Access97ConnectionParameters)
				Dim databasePath As String = Server.MapPath("App_Data/nwind.mdb")

				' Specifies the path to a database file.                    
				parameters.FileName = databasePath
			End If
		End Sub
	End Class
End Namespace