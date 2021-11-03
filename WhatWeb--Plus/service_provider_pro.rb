Plugin.define do
    name "service_provider_pro" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 50, :regexp => /js.spp_clients\.js/, :search => 'body'  },
    { :regexp => /\.spp\.io.js./, :search => 'body'  },
    { :regexp => /app.spp.co/, :search => 'body'  }
]
end