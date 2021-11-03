Plugin.define do
    name "visualpath" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /visualpath[^.]*\.trackset\.it.[^.]+.track.include\.js/, :search => 'body'  }
]
end