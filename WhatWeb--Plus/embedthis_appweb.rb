Plugin.define do
    name "embedthis_appweb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Mbedthis-Appweb(?:.([\d.]+))?/  }
]
end