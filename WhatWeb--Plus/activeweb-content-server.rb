Plugin.define do
name "activeWeb-Content-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Content Server is a comprehensive, scalable content management platform for professional demands. It combines editorial system, website management and development environment for Web applications in one package."
website "http://www.active-web.de/"
matches [
    {:name=>"X-AwCache-Command Header", :text=>"", :search=>"headers[x-awcache-command]"},
    {:name=>"X-AwCache-FollowUp Header", :text=>"", :search=>"headers[x-awcache-followup]"},
    {:name=>"X-AwCache-ScriptTechnology Header", :string=>/^.*$/ ,:search=>"headers[x-awcache-scripttechnology]"},
    {:search=>"headers", :text=>'x-awcache'},
    {:text=>'<!-- AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN -->'},
    {:text=>'AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN'},
    {:text=>'activeWeb cache extension'},
    {:version=>/<!--[\s]+activeWeb cache extension R([\d\.]+)/},
    {:version=>/<!--[\s]+page generated with activeWeb contentserver R([\d\.]+)/}
]
end
