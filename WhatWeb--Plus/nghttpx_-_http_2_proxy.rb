Plugin.define do
    name "nghttpx_-_http_2_proxy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /nghttpx nghttp2.?([\d.]+)?/,:offset => 1  }
]
end