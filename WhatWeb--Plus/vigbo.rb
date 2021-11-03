Plugin.define do
    name "vigbo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+(?:\.vigbo\.com|\.gophotoweb\.com)/  },
    { :search => 'body', :regexp => /(?:\.vigbo\.com|\.gophotoweb\.com)/  }
]
end