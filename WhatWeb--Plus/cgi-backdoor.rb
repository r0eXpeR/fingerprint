Plugin.define do
name "CGI-Backdoor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simple CGI backdoor by DK (http://michaeldaw.org)"
matches [
{ :text=>'<html><body><!-- Simple CGI backdoor by DK (http://michaeldaw.org) --><b style="color:black;background-color:#ffff66">Usage</b>: http://target.com/perlcmd.cgi?cat /etc/passwd<pre></pre></body></html>', :string=>'Simple CGI backdoor by DK (http://michaeldaw.org)' },
]
end
