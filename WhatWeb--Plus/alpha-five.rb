Plugin.define do
name "Alpha-Five"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Alpha Five Application Server allows you to deploy the web applications you build with Alpha Five Developer. Each license allows you to install the server on one PC."
website "https://www.alphasoftware.com/"
dorks [
'inurl:/login.a5w'
]
matches [
    {:search=>"headers", :text=>'A5wSessionId'},
    {:search=>"headers", :text=>'Alpha Five'},
    {:search=>"headers[server]", :version=>/^Alpha Five( Application Server)?\/([\d\.]+ Build\/[\d\-]+)/, :offset=>1},
    {:search=>"headers[set-cookie]", :regexp=>/A5wBrowserId=[a-f\d]{32};/},
    {:search=>"headers[set-cookie]", :regexp=>/A5wSessionId=[a-f\d]{32};/}
]
end
