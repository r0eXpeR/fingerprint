Plugin.define do
    name "fareharbor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+fareharbor/  },
    { :regexp => /fareharbor\.com.embeds.api./, :search => 'body'  }
]
end