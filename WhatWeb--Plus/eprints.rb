Plugin.define do
    name "eprints" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /EPrints ([\d.]+)/  }
]
end