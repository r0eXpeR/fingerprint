Plugin.define do
    name "squid_proxy_(ids)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'eventsquid-id'  },
    { :text => 'X Squid Error'  }
]
end