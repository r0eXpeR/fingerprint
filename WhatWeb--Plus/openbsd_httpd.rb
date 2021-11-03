Plugin.define do
    name "openbsd_httpd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^OpenBSD httpd/  }
]
end