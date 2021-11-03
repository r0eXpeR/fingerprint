Plugin.define do
    name "zenedge_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'ZENEDGE'  }
]
end