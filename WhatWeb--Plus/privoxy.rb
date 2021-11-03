Plugin.define do
    name "privoxy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Proxy-Agent: Privoxy'   }
]
end