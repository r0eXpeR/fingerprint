Plugin.define do
    name "apache_jspwiki" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]* xmlns:jspwiki=/  },
    { :regexp => /jspwiki/, :search => 'body'  }
]
end