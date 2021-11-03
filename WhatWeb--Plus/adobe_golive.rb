Plugin.define do
    name "adobe_golive" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Adobe GoLive(?:\s([\d.]+))?/, :search => 'body'   },
    { :text => 'generator" content="Adobe GoLive'    }
]
end