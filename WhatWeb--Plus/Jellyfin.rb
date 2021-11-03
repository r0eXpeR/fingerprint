Plugin.define do
    name "Jellyfin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content=\http://jellyfin.org\"'   }
]
end