Plugin.define do
    name "goahead" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'GoAhead'    },
    { :search => 'headers[server]', :regexp => /GoAhead/   }
]
end