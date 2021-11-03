Plugin.define do
    name "sma_sunny_webbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: WebBox-20'   },
    { :text => 'SMA Sunny Webbox'   }
]
end