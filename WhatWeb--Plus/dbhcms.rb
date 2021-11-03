Plugin.define do
name "DBHcms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton" 
]
version "0.2"
description "The DBHcms is a small free Open Source content management system for personal and small business websites."
website "http://www.drbenhur.com"
dorks [
'"powered by DBHcms" -dork'
]
matches [
    {:regexp=>/<!--[\s]+Change the copyright but please leave a link "powered by DBHcms" to http:\/\/www.drbenhur.com[\s]/},
    {:regexp=>/<!--[\s]+Please leave this link on your website, it will help a lot for the DBHcms to get well-known./},
    {:regexp=>/<!--[\s]+\#{90,100}[\s]+#[\s]+#[\s]+#  DBHCMS - Web Content Management System[\s]+#[\s]+#[\s]+#[\s]+\#{90,100}/},

    {:text=>'<a target="_blank" href="http://www.drbenhur.com/" class="copyright"> powered by DBHcms </a>'},
    {:text=>'powered by DBHcms'}
]
end
