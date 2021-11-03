Plugin.define do
name "mojoPortal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "mojoPortal is Free and Open Source. Create accessible, standards compliant web pages and content right in the browser. Powerful content management, easy to learn, easy to use."
website "http://www.mojoportal.com/"
dorks [
'"Powered by mojoPortal"'
]
matches [
{ :certainty=>25, :ghdb=>'"Powered by mojoPortal"' },
{ :text=>"<a href='http://www.mojoportal.com' >Powered by mojoPortal</a>" },
{ :text=>"<a href='http://www.mojoportal.com'  title='mojoPortal.com'>Powered by mojoPortal</a>" },
{ :certainty=>25, :regexp=>/<head id="ct[0-9]+_Head[0-9]+"><title>/i },
{ :text=>'	<img src="../Data/SiteImages/mojoportal-logo-med.gif" alt="mojoPortal Content Management System" />' },
{ :text=>'<link id="Link1" runat="server" rel="stylesheet" href="../Data/style/setup.css" type="text/css"  />' },
]
end
