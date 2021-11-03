Plugin.define do
    name "apostrophecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+data-apos-refreshable[^>]/  }
]
end