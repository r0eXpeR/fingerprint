Plugin.define do
    name "peertube" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^PeerTube$/, :search => 'body'  }
]
end