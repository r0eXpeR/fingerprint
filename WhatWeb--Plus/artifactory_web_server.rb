Plugin.define do
    name "artifactory_web_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Artifactory(?:.([\d.]+))?/  }
]
end