Plugin.define do
    name "monkey_http_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Monkey.?([\d.]+)?/  }
]
end