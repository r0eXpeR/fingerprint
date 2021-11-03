Plugin.define do
    name "axtls_embad_httpd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'axhttpd'   }
]
end