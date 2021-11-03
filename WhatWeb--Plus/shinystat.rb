Plugin.define do
    name "shinystat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img[^>]*\s+src=['"]?https?:..www\.shinystat\.com.cgi-bin.shinystat\.cgi\?[^'"\s>]*['"\s.>]/  },
    { :search => 'body', :regexp => /^https?:..codice(?:business|ssl|pro|isp)?\.shinystat\.com.cgi-bin.getcod\.cgi/  }
]
end