Plugin.define do
    name "rx_web_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /RX-WEB/  }
]
end