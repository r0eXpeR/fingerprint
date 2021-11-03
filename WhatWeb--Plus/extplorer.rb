Plugin.define do
name "eXtplorer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eXtplorer is a PHP and Javascript-based File Manager"
website "http://extplorer.net/"
matches [
    {:text=>'<title>Login - eXtplorer</title>'},
    {:text=>'Login - eXtplorer'},
    {:url=>'/extplorer.xml', :version=>/<version>([^<]+)<\/version>/}
]
end
