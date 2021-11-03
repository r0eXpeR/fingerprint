Plugin.define do
    name "elm-ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<style>[\s\S]*\.explain > \.s[\s\S]*\.explain > \.ctr > \.s/  }
]
end