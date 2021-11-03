Plugin.define do
name "CodeIgniter-PHP-Framework"
authors [
  "Aung Khant <YGN Ethical Hacker Group, Myanmar, http://yehg.net>",

  "Andrew Horton", 

]
version "0.3"
description "CodeIgniter PHP Framework"
website "http://codeigniter.com/"	
matches [
    {:regexp=>/<input[^>]+name="ci_csrf_token/},
    {:search=>"headers", :text=>'ci_session'},
    {:search=>"headers[set-cookie]", :regexp=>/ci_session/, :name=>"ci_session cookie"},
    {:string=>'404 Signature',:url=>'index.php/'+randstr(),:md5=>'e087ab5729efdfa939ba620e4593bd99'},
    {:string=>'404 Signature',:url=>randstr(),:md5=>'e087ab5729efdfa939ba620e4593bd99'},
    {:string=>'Database Error Signature',:md5=>'951c845488483135e52252609a1d99b2'},
    {:string=>'Database Error Signature',:url=>'index.php/'+randstr(),:md5=>'951c845488483135e52252609a1d99b2'},
    {:string=>'Invalid Character Filter',:url=>randstr()+'!!!',:md5=>'c9b724012ab64481a034f9a453143ece'},
    {:string=>'Invalid Character Filter',:url=>randstr()+'!!!',:text=>'The URI you submitted has disallowed characters.'},
    {:url=>'/application/index.html', :md5=>'0227cfd904e99656279202032b98d4a7'},
    {:url=>'/fuckggzfdsfsderwzzz', :md5=>'fc10f358967a59750ef6fd9a698e2d60'},
    {:url=>'/license.txt', :md5=>'17a14d067fba7c4b2631bfb0f67ca21d'},
    {:url=>'/license.txt', :md5=>'5134c05d3b0e1302f64f8158c0b97447'},
    {:url=>'/license.txt', :md5=>'f36cb575cce73f64a53b489d3f94c683'}
]
end
