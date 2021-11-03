Plugin.define do
    name "fedora" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Fedora'    },
    { :search => 'headers[server]', :regexp => /Fedora/   }
]
end