Plugin.define do
    name "mod_log_bytes" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_log_bytes'   }
]
end