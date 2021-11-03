Plugin.define do
name "Jcow"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Jcow - social networking"
website "http://www.jcow.net/"
dorks [
'"Go to" "Admin CP" "Themes" "Username or Email" "Manage Blocks"'
]
matches [
    {:text=>'<!-- do NOT remove the Jcow Attribution Information -->'},
    {:text=>'<!-- end jcow_application_box -->'},
    {:text=>'<!-- jcow branding -->'},
    {:text=>'<meta name="Generator" content="Powered by Jcow" />'},
    {:text=>'content="Jcow'},
    {:text=>'content="Powered by Jcow'},
    {:text=>'end jcow_application_box'},
    {:version=>/<meta name="Generator" content="Jcow Social Networking Software\. ([\d\.]+)" \/>/},
    {:version=>/Powered by <a href="http:\/\/www\.jcow\.net" title="Social Networking Software, Community Software" target="_blank"><strong>Jcow<\/strong> ([\d\.]+)<\/a>/}
]
end
