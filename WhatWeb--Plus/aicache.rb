Plugin.define do
    name "aicache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Aicache'   }
]
end