Plugin.define do
    name "appwall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-SL-CompState'   }
]
end