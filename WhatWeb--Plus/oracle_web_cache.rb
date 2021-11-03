Plugin.define do
    name "oracle_web_cache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Oracle(?:AS)?[- ]Web[- ]Cache(?:[- .]([\da-z..]+))?/  }
]
end