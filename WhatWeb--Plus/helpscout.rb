Plugin.define do
    name "helpscout" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /beacon-v2\.helpscout\.net/, :search => 'body'  }
]
end