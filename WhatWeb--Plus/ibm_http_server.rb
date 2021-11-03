Plugin.define do
    name "ibm_http_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'IBM_HTTP_Server'    },
    { :search => 'headers[server]', :regexp => /IBM_HTTP_Server(?:.([\d.]+))?/,:offset => 1   }
]
end