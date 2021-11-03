Plugin.define do
    name "genesys_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /apps\.mypurecloud\.\w+.widgets.([\d.]+)/, :search => 'body',:offset => 1  },
    { :regexp => /apps\.mypurecloud\.\w+/, :search => 'body'  }
]
end