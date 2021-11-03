Plugin.define do
    name "zscaler_cloud_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'zscaler'  }
]
end