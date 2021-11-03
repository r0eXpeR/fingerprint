Plugin.define do
    name "sophos" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Sophos'   }
]
end