Plugin.define do
name "Iciniti-Store"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Iciniti Store is a highly customizable shopping cart that is fully integrated with the Sage Accpac ERP accounting system."
website "http://www.iciniti.com"
dorks [
'inurl:"logon_forgot_password.aspx"'
]
matches [
{ :text=>'<!-- START (content_stylesheet.inc) -->' },
]
end
