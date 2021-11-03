Plugin.define do
    name "elog_http" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /ELOG HTTP ?([\d.-]+)?/  }
]
end