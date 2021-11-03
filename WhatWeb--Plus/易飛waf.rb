Plugin.define do
    name "网御waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<div id="divLogin">'   }
]
end