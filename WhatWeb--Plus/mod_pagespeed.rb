Plugin.define do
    name "mod_pagespeed" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_pagespeed'   }
]
end