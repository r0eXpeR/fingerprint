Plugin.define do
name "OpenCms"
authors [
  "Emilio Casbas", 

  "Andrew Horton", 

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "OpenCms, professional and easy to use CMS."
website "http://www.opencms.org/"
matches [
    {:certainty=>25, :regexp=>/<(link|img)[^>]+(href|src)="[^"^:]*\/opencms\/[^"]+"[^>]*>/},
    {:certainty=>75, :regexp=>/<(link|img)[^>]+(href|src)="[^"^:]*\/(opencms|export)\/(sites|system)\/[^"]+"[^>]*>/},
    {:regexp=>/<link href=".opencms./},
    {:regexp=>/<meta name="generator"[^>]+content="OpenCms"( \/)?>/},
    {:regexp=>/^OpenCms/, :search=>"headers[server]"},
    {:search=>'body', :regexp=>/opencms/},
    {:search=>'headers[server]', :regexp=>/OpenCms/},
    {:text=>'Powered by OpenCms'},
    {:text=>'content="OpenCms'},
    {:version=>/<meta name="generator"[^>]+content="Opencms version ([\d\.]+)"( \/)?>/},
    {:version=>/^OpenCms\/([a-z\d\.]+)/, :search=>"headers[server]"}
]
end
