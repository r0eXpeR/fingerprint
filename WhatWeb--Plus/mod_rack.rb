Plugin.define do
    name "mod_rack" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /mod_rack(?:.([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'mod_rack'    },
    { :search => 'headers[server]', :regexp => /mod_rack(?:.([\d.]+))?/,:offset => 1   }
]
end