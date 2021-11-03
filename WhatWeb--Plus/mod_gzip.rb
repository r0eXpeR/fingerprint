Plugin.define do
    name "mod_gzip" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_gzip'   }
]
end