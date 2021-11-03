Plugin.define do
    name "logitech_media_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Logitech Media Server(?: \(([\d\.]+))?/  }
]
end