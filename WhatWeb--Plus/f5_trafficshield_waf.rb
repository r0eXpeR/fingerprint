Plugin.define do
    name "f5_trafficshield_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'F5-TrafficShield'  }
]
end