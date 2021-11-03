Plugin.define do
    name "mobotix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'MOBOTIX Camera User'   },
    { :text => 'content="MOBOTIX AG'   }
]
end