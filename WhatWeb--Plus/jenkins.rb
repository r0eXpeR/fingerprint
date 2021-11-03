Plugin.define do
name "Jenkins"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Jenkins is an application that monitors executions of repeated jobs, such as building a software project or jobs run by cron."
website "http://jenkins-ci.org/"
dorks [
'intitle:"Jenkins" "Remember me on this computer" "Jenkins ver"'
]
matches [
    {:mmh3=>'81586312'},
    {:regexp=>/<script>var isRunAsTest=false; var rootURL="[^"]*";<\/script>/},
    {:regexp=>/<span class="jenkins_ver"><a href="https:..jenkins\.io.">Jenkins ver\. ([\d.]+)/,:offset=>1},
    {:search=>"headers", :text=>'X-Jenkins'},
    {:search=>"headers[x-hudson-cli-port]", :regexp=>/^.*$/},
    {:search=>"headers[x-hudson-theme]", :regexp=>/^.*$/},
    {:search=>"headers[x-hudson]", :regexp=>/^.*$/},
    {:search=>"headers[x-instance-identity]", :regexp=>/^.*$/},
    {:search=>"headers[x-jenkins-cli-port]", :regexp=>/^.*$/},
    {:search=>"headers[x-jenkins]", :version=>/^(.+)$/},
    {:search=>"headers[x-ssh-endpoint]", :regexp=>/^.*$/},
    {:text=>'Jenkins'},
    {:url=>'/login', :text=>'<title>Jenkins</title>'},
    {:version=>/<\/span><a href="http:\/\/jenkins\-ci\.org\/">Jenkins ver\. ([^<]+)<\/a>/}
]
end
