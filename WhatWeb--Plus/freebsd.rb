Plugin.define do
    name "freebsd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'FreeBSD'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /FreeBSD(?: ([\d.]+))?/   }
]
end