Plugin.define do
    name "mod_dav" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'DAV/2'    },
    { :search => 'headers[server]', :regexp => /\b(?:mod_)?DAV\b(?:.([\d.]+))?/,:offset => 1   }
]
end