Plugin.define do
name "eSitesBuilder"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Professional online website builder is complete website creation tool that offers everything you need to build a website: ad-free hosting, free domain names, website templates and website design, CMS, eCommerce and Real Estate solutions. Make your own website today, create a website in minutes: turnkey solutions from a Personal Website to a big Online Store. Try it now for Free!"
website "http://www.esitesbuilder.com"
dorks [
'"powered by eSitesBuilder"'
]
matches [
    {:regexp=>/<a [^href]+href="http:\/\/[www\.]*esitesbuilder.com">Powered by eSitesBuilder<\/a>/},
    {:regexp=>/Powered by[&nbsp;]*[\s]*<a [^href]+href="http:\/\/[www\.]*esitesbuilder.com">eSitesBuilder<\/a>/},
    {:text=>'<!-- created by XTLabs, Inc. http://www.xt-labs.com -->'},
    {:text=>'All rights reserved. Powered by eSitesBuilder'},
    {:text=>'Powered by <a href="http://www.esitesbuilder.com/" target="_blank" alt="website builder">eSitesBuilder</a>'},
    {:text=>'eSitesBuilder. All rights reserved'}
]
end
