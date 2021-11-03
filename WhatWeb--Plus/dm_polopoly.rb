Plugin.define do
    name "dm_polopoly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:link [^>]*href|img [^>]*src)=".polopoly_fs./  }
]
end