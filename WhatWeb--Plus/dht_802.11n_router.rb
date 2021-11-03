Plugin.define do
    name "dht_802.11n_router" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mini_httpd'   },
    { :text => 'DHT 802.11n QoS Router'   }
]
end