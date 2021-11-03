Plugin.define do
name "SmartCDS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "SmartCDS (Content Delivery Server) hardware [Japanese]"
website "http://www.globaldawin.com/product/smartcds.php3"
matches [
{ :text=>'<img border=0 src="http://www.globaldawin.com/capcds/refresh.gif" width="13" height="16"' },
{ :regexp=>/^smartcds/, :search=>"headers[server]" },
{ :version=>/^smartcds\/([^\s]+)/, :search=>"headers[server]" },
{ :version=>/^Version:([^\s]+)$/, :search=>"headers[smartcds]" },
{ :string=>/^(.*)$/, :search=>"headers[x-smartcds-error]" },
]
end
