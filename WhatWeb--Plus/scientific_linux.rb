Plugin.define do
    name "scientific_linux" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Scientific Linux'    },
    { :search => 'headers[server]', :regexp => /Scientific Linux/   },
    { :search => 'headers[x-powered-by]', :regexp => /Scientific Linux/   }
]
end