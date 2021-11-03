Plugin.define do
name "Tektroniks"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tektroniks monitoring Solutions, Wireless monitoring Systems, Wireless data loggers & data loggers. Products include Wireless Monitoring System, Gas Leak Detection, Refrigeration Control Systems, DataLogger, Temperature sensors and Hand Held Thermometers."
website "http://www.tek-troniks.com/site/products/"
dorks [
'intitle:"Login Page" "Registered users sign in on this page"'
]
matches [
{ :text=>'<p>Transfering you to login page in 2 seconds...</p>' },
{ :text=>'<td width="100"><label id="AU_LOGIN_ID_label" for="AU_LOGIN_ID" dataType="" required="true">User Name:</label></td>' },
{ :url=>"/login.htm", :model=>/<meta name="Classification" content="(Tektroniks|DATAcentre) - ([^"]+)" \/>/, :offset=>1 },
{ :string=>/<meta name="Copyright" content="&copy;(20[\d\-]+) (Tektroniks|DATAcentre)" \/>/ },
{ :search=>"headers[server]", :version=>/^Tektroniks\/([^\s]+)$/ },
{ :search=>"headers[www-authenticate]", :text=>'Basic realm="Tektroniks"' },
]
end
