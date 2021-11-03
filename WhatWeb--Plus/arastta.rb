Plugin.define do
    name "arastta" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a [^>]*href="https?:..(?:www\.)?arastta\.org[^>]+>Arastta/  },
    { :regexp => /arastta\.js/, :search => 'body'  }
]
end