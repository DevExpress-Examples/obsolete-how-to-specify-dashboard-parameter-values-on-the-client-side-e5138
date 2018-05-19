<%@ Page Language="C#" 
         AutoEventWireup="true" 
         CodeBehind="WebForm1.aspx.cs" 
         Inherits="Dashboard_ClientSideParameters.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v13.2, 
                Version=13.2.7.0, 
                Culture=neutral, 
                PublicKeyToken=b88d1754d700e49a"
             Namespace="DevExpress.Web.ASPxEditors" 
             TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Dashboard.v13.2.Web, 
                Version=13.2.7.0, 
                Culture=neutral, 
                PublicKeyToken=b88d1754d700e49a"
             Namespace="DevExpress.DashboardWeb" 
             TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--region #ClientSideParameters-->
        <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" 
            DashboardSource="~/App_Data/Dashboard.xml" 
            RegisterJQuery="True" 
            ClientInstanceName="WebViewer" 
            onconfiguredataconnection="ASPxDashboardViewer1_ConfigureDataConnection">
        </dx:ASPxDashboardViewer>
        <dx:ASPxButton ID="ASPxButton1" runat="server" 
            Text="ReloadData" 
            AutoPostBack="False">
            <ClientSideEvents Click="function(s, e) {
	               WebViewer.ReloadData([{ Name: 'Parameter1', Value: 'Condiments' }, 
                                         { Name: 'Parameter2', Value: new Date(1996, 01, 01) }]);
            }" />
        </dx:ASPxButton>
    <!--endregion #ClientSideParameters-->
    </div>
    </form>
</body>
</html>
