Plugin.define do
    name "iis" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Microsoft-IIS'    },
    { :search => "headers", :text => 'X-Powered-By: WAF/2.0'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /^(?:Microsoft-)?IIS(?:.([\d.]+))?/   }
]
end