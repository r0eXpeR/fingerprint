Plugin.define do
    name "fortinet_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'AFORTIWAFSID='  },
    { :search => 'headers', :text => 'fortigate'  },
    { :text => 'for additional information'  },
    { :text => 'fortigate ips sensor'  },
    { :text => 'powered by fortinet'  }
]
end