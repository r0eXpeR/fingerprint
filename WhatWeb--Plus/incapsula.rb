Plugin.define do
    name "incapsula" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Incapsula/, :search => 'headers[x-cdn]'   },
    { :search => "headers", :text => 'X-Cdn: Incapsula'    }
]
end