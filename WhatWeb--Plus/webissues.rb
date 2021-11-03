Plugin.define do
name "WebIssues"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebIssues is an open source, multi-platform system for issue tracking and team collaboration."
website "http://webissues.mimec.org/"
dorks [
'intitle:"Log in to WebIssues" "Log in to WebIssues" "Manual"'
]
matches [
{ :version=>/<div id="header-right">[\s]+WebIssues ([^\s]+) \| <a href=/ },
{ :text=>'<div><input type="hidden" name="__formId" id="field-login-__formId" value="login" />' },
]
end
