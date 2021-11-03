Plugin.define do
    name "ubuntu" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Ubuntu/, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'Ubuntu'    },
    { :search => 'headers[server]', :regexp => /Ubuntu/   }
]
end