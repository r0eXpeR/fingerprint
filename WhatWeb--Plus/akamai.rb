Plugin.define do
    name "akamai" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Akamai-Transformed'   },
    { :text => 'AkamaiGHost'   }
]
end