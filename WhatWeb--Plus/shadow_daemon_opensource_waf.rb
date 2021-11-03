Plugin.define do
    name "shadow_daemon_opensource_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :text => 'request forbidden by administrative rules'  }
]
end