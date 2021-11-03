Plugin.define do
    name "tilda" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+tilda(?:cdn|\.ws|-blocks)/  },
    { :search => 'body', :regexp => /tilda(?:cdn|\.ws|-blocks)/  }
]
end