Plugin.define do
    name "tengine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: Tengine'    },
    { :search => 'headers[server]', :regexp => /Tengine/   }
]
end