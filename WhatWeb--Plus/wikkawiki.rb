Plugin.define do
    name "wikkawiki" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="[^>]+WikkaWiki/  },
    { :search => 'body', :regexp => /WikkaWiki/  }
]
end