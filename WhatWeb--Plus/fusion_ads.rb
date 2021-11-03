Plugin.define do
    name "fusion_ads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^[^\.]*..[ac]dn\.fusionads\.net.(?:api.([\d.]+).)?/  }
]
end