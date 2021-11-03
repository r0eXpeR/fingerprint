Plugin.define do
    name "apostrophe_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+data-apos-refreshable[^>]/  }
]
end