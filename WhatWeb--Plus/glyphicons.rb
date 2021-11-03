Plugin.define do
    name "glyphicons" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link[^>]* href=[^>]+glyphicons(?:\.min)?\.css|<img[^>]* src=[^>]+glyphicons)/  }
]
end