Plugin.define do
    name "rack-cache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Rack-Cache'   }
]
end