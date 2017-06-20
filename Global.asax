<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
        if (Request.QueryString["ReturnUrl"] != null)
            {
                if (Request.QueryString["ReturnUrl"].Contains("aspx"))
                {
                    bool val = UrlAuthorizationModule.CheckUrlAccessForPrincipal
			(Request.QueryString["ReturnUrl"].ToString(), 
				HttpContext.Current.User, "GET");

                    if (val.Equals(false))
                    {
                        if (Request.UrlReferrer.AbsolutePath.Equals
			(Request.QueryString["ReturnUrl"]))
                            Response.Redirect("~/User/Homepage.aspx");
                        else
                            Response.Redirect(string.Format("{0}?ReturnUrl={1}", 
				Request.UrlReferrer.AbsolutePath, Request.QueryString
				["ReturnUrl"].ToString()));
                    }
                    else
                        if (Request.Url.AbsolutePath.Contains("UserAuthentication.aspx") && 
			Request.QueryString["ReturnUrl"].Contains("~/User/Homepage.aspx"))
                         	Response.Redirect(Request.QueryString["ReturnUrl"].ToString());
                }
            }

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

       
</script>
