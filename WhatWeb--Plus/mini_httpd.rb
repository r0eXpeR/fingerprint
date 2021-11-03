Plugin.define do
    name "mini_httpd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mini_httpd'    },
    { :search => 'headers[server]', :regexp => /mini_httpd(?:.([\d.]+))?/,:offset => 1   }
]
end