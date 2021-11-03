Plugin.define do
name "Sitefinity"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "sitefinity ASP.NET CMS"
website "http://www.sitefinity.com/"
dorks [
'inurl:"/Sitefinity/WebsiteTemplates/"'
]
matches [
    {:certainty=>75, :regexp=>/<link href="\/[Ss]ite[Ff]inity\/WebsiteTemplates\//},
    {:offset=>1, :regexp=>/^Sitefinity (.+)$/, :search=>'body'},
    {:text=>'href="http://www.sitefinity.com" class="poweredBySitefinity" title="Sitefinity ASP.NET CMS">Powered by Sitefinity ASP.NET CMS</a></p>'},
    {:text=>'title="Sitefinity ASP.NET CMS" class="poweredBySitefinity" href="http://www.sitefinity.com">Powered by Sitefinity ASP.NET CMS</a></p>'},
    {:version=>/<meta name="Generator" content="Sitefinity ([\d\.:]{1,20}( [A-Z]+)?)" \/>/}
]
end
