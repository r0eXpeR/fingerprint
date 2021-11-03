Plugin.define do
    name "trendnet_ip_cam" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Basic realm="netcam'   }
]
end