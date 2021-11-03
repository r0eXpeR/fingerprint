Plugin.define do
    name "apache_traffic_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /ATS.?([\d.]+)?/,:offset => 1  }
]
end