Plugin.define do
    name "signal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /..s\.btstatic\.com.tag\.js/  },
    { :search => 'body', :regexp => /..s\.thebrighttag\.com.iframe\?/  }
]
end