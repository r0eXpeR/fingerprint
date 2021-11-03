Plugin.define do
    name "gws_(google_web_server)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: gws'   }
]
end