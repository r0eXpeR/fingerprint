Plugin.define do
    name "banshee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Built upon the <a href="[^>]+banshee-php\.org.">[a-z]+<.a>(?:v([\d.]+))?/  },
    { :search => 'body', :regexp => /Banshee PHP/  }
]
end