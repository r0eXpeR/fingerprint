Plugin.define do
    name "snapengage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- begin SnapEngage/  }
]
end