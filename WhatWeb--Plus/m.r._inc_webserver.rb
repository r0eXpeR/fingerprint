Plugin.define do
    name "m.r._inc_webserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /M\.R\. Inc Webserver/  }
]
end