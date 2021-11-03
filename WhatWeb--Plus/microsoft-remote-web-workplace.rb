Plugin.define do
name "Microsoft-Remote-Web-Workplace"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Remote Web Workplace is a feature of Microsoft's Windows Small Business Server and the midsize business-focused product, Windows Essential Business Server, which enables pre-created users to log in to a front-end network-facing interface of the small business server."
website "http://microsoft.com/"
dorks [
'"In order to use all of the features available in Remote Web Workplace, you must enable JavaScript for your Web browser."'
]
matches [
{ :text=>'</title><link href="signinStyle.css" rel="stylesheet" type="text/css" />' },
{ :regexp=>/<form name="form1" method="post" action="logon\.aspx\?ReturnUrl=%2f[^"]" id="form1" autocomplete="OFF" onsubmit="OnUserNameFocus\(\);">/ },
{ :text=>'<input id="rememberMe" type="checkbox" name="rememberMe" tabindex="3" /><label for="rememberMe">Remember me on this computer</label>', :certainty=>25 },
{ :text=>'<meta name="copyright" content="Copyright (c) Microsoft Corporation.  All rights reserved." />', :certainty=>25 },
{ :text=>'<head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>', :certainty=>25 },
]
end
