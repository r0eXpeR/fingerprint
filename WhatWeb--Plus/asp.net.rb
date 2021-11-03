Plugin.define do
name "ASP_NET"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

  "Bhavin Senjaliya", 

  "Andrew Horton", 

]
version "0.8"
description "ASP.NET is a free web framework that enables great Web applications. Used by millions of developers, it runs some of the biggest sites in the world."
website "https://www.asp.net/"
dorks [
'inurl:web.config ext:config "ConnectionString"',
'inurl:global.asa ext:asa "ConnectionString"'
]
matches [
    {:module=>"AnonymousIdentificationModule", :search=>"headers[set-cookie]", :regexp=>/^anonymousID=[^;]+; expires=[^;]+; path=[^;]+; HttpOnly/},
    {:module=>"AnonymousIdentificationModule", :search=>"headers[set-cookie]", :regexp=>/^chkvalues=[^;]+; expires=[^;]+; path=[^;]+; HttpOnly/},
    {:name=>"X-AspNet-Version HTTP header", :search=>"headers[x-aspnet-version]", :version=>/^(.*)$/},
    {:name=>"x-powered-by HTTP header", :search=>"headers[x-powered-by]", :regexp=>/asp\.net/},
    {:search=>"body", :filepath=>/<b> Source File: <\/b> ([^<]+)<b> &nbsp;&nbsp; Line:.*This error page might contain sensitive information because ASP.NET/},
    {:search=>"body", :string=>"Verbose error messages", :text=>"This error page might contain sensitive information because ASP.NET is configured to show verbose error messages"},
    {:search=>"body", :text=>'<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"'},
    {:search=>"headers", :text=>'X-Powered-By: ASP.NET'},
    {:search=>"headers[set-cookie]", :regexp=>/^.ASPXANONYMOUS/, :name=>".ASPXANONYMOUS cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^ASP.NET_SessionId/, :name=>"ASP.NET_SessionId cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^ASPSESSIONID/, :name=>"ASPSESSIONID cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^__RequestVerificationToken/, :name=>"__RequestVerificationToken cookie"},
    {:string=>"ViewState Encrypted", :search=>"body", :text=>'name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED"'},
    {:string=>/<add key="ConnectionString" value="([^\"]+)/},
    {:string=>/connectionString="([^\"]+)/},
    {:string=>/connectionstring=DRIVER=([^\n]+)/},
    {:string=>/connectionstring=Provider=([^\n]+)/},
    {:regexp=>/vti_title:SR|Web Settings for Active Server Pages/}
]
passive do
	m=[]
	m << { :string=>"MVC"+@headers['x-aspnetmvc-version'].to_s } unless @headers['x-aspnetmvc-version'].nil?
	m
end
end
