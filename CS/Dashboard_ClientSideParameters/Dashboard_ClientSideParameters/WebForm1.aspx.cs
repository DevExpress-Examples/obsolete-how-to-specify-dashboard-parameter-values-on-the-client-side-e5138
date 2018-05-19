using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.DataAccess.ConnectionParameters;

namespace Dashboard_ClientSideParameters {
    public partial class WebForm1 : System.Web.UI.Page {
        protected void ASPxDashboardViewer1_ConfigureDataConnection(object sender, DevExpress.DashboardWeb.ConfigureDataConnectionWebEventArgs e) {
            if (e.ConnectionName == "nwindConnection") {

                // Gets connection parameters used to establish a connection to the database.
                Access97ConnectionParameters parameters =
                    (Access97ConnectionParameters)e.ConnectionParameters;
                string databasePath = Server.MapPath("App_Data/nwind.mdb");

                // Specifies the path to a database file.                    
                parameters.FileName = databasePath;
            }
        }
    }
}