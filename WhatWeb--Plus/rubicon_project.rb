Plugin.define do
    name "rubicon_project" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..[^.]*\.rubiconproject\.com/, :search => 'body'  }
]
end