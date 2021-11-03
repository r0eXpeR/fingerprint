Plugin.define do
    name "naxsi_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'naxsi-waf'  }
]
end