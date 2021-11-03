Plugin.define do
    name "cisco_sslvpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/+CSCOE+/logon.html'   }
]
end