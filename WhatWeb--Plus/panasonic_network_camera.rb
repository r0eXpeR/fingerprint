Plugin.define do
    name "panasonic_network_camera" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'MultiCameraFrame?Mode=Motion&Language'   },
    { :text => 'U S Software Web Server'   }
]
end