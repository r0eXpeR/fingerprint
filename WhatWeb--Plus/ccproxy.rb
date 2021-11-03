Plugin.define do
    name "ccproxy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: CCProxy'   }
]
end