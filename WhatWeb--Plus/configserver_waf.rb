Plugin.define do
    name "configserver_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '>the firewall on this server is blocking your connectionH'  }
]
end