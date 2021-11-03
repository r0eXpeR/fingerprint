Plugin.define do
    name "watchguard_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'WatchGuard'  },
    { :search => 'headers', :text => 'watchguard'  },
    { :text => 'Request denied by WatchGuard Firewall'  },
    { :text => 'Server: WatchGuard'  }
]
end