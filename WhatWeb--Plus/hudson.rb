Plugin.define do
    name "hudson" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Hudson'   }
]
end