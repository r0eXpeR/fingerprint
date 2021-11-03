Plugin.define do
    name "suhosin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'suhosin'   }
]
end