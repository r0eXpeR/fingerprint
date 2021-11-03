Plugin.define do
    name "azure_cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^(?:ECAcc|ECS|ECD)/  }
]
end