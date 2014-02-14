<cfscript>
	variables.requiresCAS = true; //app requires CAS authentication?

	variables.CASArguments	= {
								cas_server = "https://sso.fau.edu",
								approot = 'http://' & CGI.HTTP_HOST,
								direct_forwarding = true,
								username = 'ihartstein'
							};

	targetPage = 'http://dyndev.fau.edu/web/Assessment/';

	//Initialize CAS
	Session.CAS = CreateObject("Component", "Web.Components.Authentication.CAS").init(variables.CASArguments);

	/*Session.CAS.validate(targetpage);*/

	writedump(var=#Session.CAS# label="Session.CAS");


	//Session.User = CreateObject("Component", "Web.Components.Authentication.User").Init(Session.Cas.getUsername());		

	Session.User = CreateObject("Component", "Web.Components.Authentication.User").Init("ihartstein");	

	writedump(var=#Session.User# label="Session.User");
</cfscript>


<!---
<cfscript>
	my_username="ihartstein";
	my_pw="ikeFAU1358";
</cfscript>

 <cfldap  
             server = "bocdcfau02.ad.fau.edu" 
             port="389"
             action = "query" 
             name = "results" 
             start = "dc=ad,dc=fau,dc=edu"     
             filter="(cn=#my_username#)"
             attributes = "givenname,samaccountname,dn,cn,mail" 
             username = "FAU\#my_username#"
             password = "#my_pw#"
             
            > 

<cfoutput>
	<cfdump var="#results#" />
</cfoutput>
--->