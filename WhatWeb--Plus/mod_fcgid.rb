Plugin.define do
    name "mod_fcgid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_fcgid'   }
]
end