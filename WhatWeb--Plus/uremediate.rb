Plugin.define do
    name "uremediate" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /fecdn\.user1st\.info.Loader.head/, :search => 'body'  }
]
end