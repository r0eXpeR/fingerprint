Plugin.define do
    name "stricthttpfirewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '500', :text => 'the request was rejected because the url contained a potentially malicious string'  }
]
end