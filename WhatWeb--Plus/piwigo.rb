Plugin.define do
name "Piwigo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Piwigo is a photo gallery software for the web, built by an active community of users and developers."
website "http://piwigo.org/"
dorks [
'"powered by piwigo"'
]
matches [
    {:regexp=>/<div id="copyright">\s+<a name="EoP"><\/a>\s+<!-- End of Page -->/},
    {:regexp=>/Powered by\s+<a href="http:\/\/piwigo\.org" class="Piwigo">/},
    {:search=>"headers", :text=>'pwg_id'},
    {:text=>'<meta name="generator" content="Piwigo (aka PWG), see piwigo.org">'},
    {:text=>'<meta name="generator" content="Piwigo, piwigo.org">'},
    {:text=>'generator" content="Piwigo'}
]
end
