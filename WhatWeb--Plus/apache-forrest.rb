Plugin.define do
name "Apache-Forrest"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Apache Forrest software is a publishing framework that transforms input from various sources into a unified presentation in one or more output formats."
website "https://forrest.apache.org/"
matches [
    {:module=>/<meta content="([^"^>]+)" name="Forrest-skin-name"/},
    {:module=>/<meta content="([^"^>]+)" name="Forrest-theme-name"/},
    {:module=>/<meta name="Forrest-skin-name" content="([^"^>]+)"/},
    {:module=>/<meta name="Forrest-theme-name" content="([^"^>]+)"/},
    {:text=>'<meta content="Apache Forrest" name="Generator"'},
    {:text=>'content="Apache Forrest'},
    {:text=>'name="Forrest'},
    {:version=>/<meta content="([^"^>]+)" name="Forrest-version"/},
    {:version=>/<meta name="Forrest-version" content="([^"^>]+)"/}
]
end
