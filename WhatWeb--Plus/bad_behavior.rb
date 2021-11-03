Plugin.define do
    name "bad_behavior" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'bb2_screener_'   }
]
end