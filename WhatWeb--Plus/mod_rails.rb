Plugin.define do
    name "mod_rails" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /mod_rails(?:.([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'mod_rails'    },
    { :search => 'headers[server]', :regexp => /mod_rails(?:.([\d.]+))?/,:offset => 1   }
]
end