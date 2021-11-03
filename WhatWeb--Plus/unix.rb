Plugin.define do
    name "unix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Unix'    },
    { :search => 'headers[server]', :regexp => /Unix/   }
]
end