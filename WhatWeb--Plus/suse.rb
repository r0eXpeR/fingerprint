Plugin.define do
    name "suse" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /SUSE(?:.?\s?-?([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]',:offset => 1, :regexp => /SUSE(?:.?\s?-?([\d.]+))?/  }
]
end