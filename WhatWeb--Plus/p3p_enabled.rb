Plugin.define do
    name "p3p_enabled" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'P3p: CP'   }
]
end