Plugin.define do
    name "phpalbum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<!--phpalbum ([.\d\s]+)-->/  }
]
end