Plugin.define do
name "FirePHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FirePHP enables you to log to your Firebug Console using a simple PHP method call. FirePHP works by sending JSON encoded debug data in the response headers instead of the page content."
website "http://www.firephp.org/"
matches [
    {:search=>"headers", :text=>'meta.wildfirehq.org'},
    {:search=>"headers", :text=>'x-wf-'},
    {:search=>"headers[x-wf-1-plugin-1]", :version=>/^http:\/\/meta\.firephp\.org\/Wildfire\/Plugin\/FirePHP\/Library-FirePHPCore\/([^\s]+)$/},
    {:search=>"headers[x-wf-1-structure-1]", :string=>/^http:\/\/meta\.firephp\.org\/Wildfire\/Structure\/FirePHP\/(FirebugConsole\/[^\s]+)$/},
    {:search=>"headers[x-wf-protocol-1]", :regexp=>/^http:\/\/meta\.wildfirehq\.org\/Protocol\//}
]
end
