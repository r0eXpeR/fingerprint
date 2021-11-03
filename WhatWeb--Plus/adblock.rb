Plugin.define do
    name "adblock" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Adblock-Key'   }
]
end