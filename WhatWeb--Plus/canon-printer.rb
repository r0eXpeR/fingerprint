Plugin.define do
name "Canon-Printer"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Remote UI for Canon Printers"
website "http://www.canon.com/"
dorks [
'intitle:"Remote UI" intitle:"Top Page" intitle:Canon'
]
matches [
    {:certainty=>25, :search=>"headers[server]", :version=>/^LPC Http Server\/V([^\s]+)/},
    {:certainty=>75, :search=>"headers[server]", :version=>/^KS_HTTP\/([^\s]+)/},
    {:model=>/<link rel="shortcut icon" type="image\/x-icon" href="G24_favicon\.ico" \/><title>Remote UI \(Top Page\) : [^:^<]* : Canon ([^\s^<]+)<\/title>/},
    {:model=>/<title>Canon ([^\s]+) series Network Configuration \| /},
    {:model=>/<title>Remote UI&lt;Top page&gt;: ([^:]+)/i, :url=>"/frame.cgi"},
    {:model=>/<title>Remote UI&lt;Top page&gt;: ([^:]+)/i, :url=>"/frame.cgi?PageFlag=t_frame.tpl"},
    {:model=>/<title>Remote UI<Top Page>: (\w+)/i},
    {:search=>"headers", :text=>'Canon Http Server'},
    {:search=>"headers[server]", :regexp=>/^Canon Http Server/i},
    {:search=>"headers[server]", :version=>/^Canon Http Server (Ver)?(.*)/i, :offset=>1},
    {:url=>"/_top.htm", :text=>'<img src="top_canon.gif" width="123" height="33"'}
]
end
