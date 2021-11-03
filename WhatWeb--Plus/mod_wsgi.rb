Plugin.define do
    name "mod_wsgi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /mod_wsgi(?:.([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'mod_wsgi'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /mod_wsgi(?:.([\d.]+))?/   }
]
end