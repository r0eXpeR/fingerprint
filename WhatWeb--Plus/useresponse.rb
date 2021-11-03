Plugin.define do
name "UseResponse"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "UseResponse is a fully customizable, open-source, self-hosted customer feedback software and support system"
website "http://www.useresponse.com/"
dorks [
'"Enter your email (login) to get instructions to recover your password" "All Responses" "Powered by" inurl:"responses"'
]
matches [
{ :text=>'title="Customer Feedback Software, Community Support System" target="_blank" href="http://www.useresponse.com" class="popup-logo">' },
{ :regexp=>/<!-- DO NOT MODIFY (ABOVE|BELOW) THIS LINE UNLESS PURCHASED BRANDING REMOVAL -->/ },
{ :text=>'<form id="system-form-registration" enctype="application/x-www-form-urlencoded" class="system-form-registration" accept-charset="utf-8"' },
]
end
