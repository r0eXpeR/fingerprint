Plugin.define do
    name "compstate_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'X-SL-CompState'  }
]
end