Plugin.define do
    name "oracle_commerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-atg-version]',:offset => 1, :regexp => /(?:ATGPlatform.([\d.]+))?/  }
]
end