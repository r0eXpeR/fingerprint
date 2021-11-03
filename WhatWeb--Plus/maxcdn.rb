Plugin.define do
    name "maxcdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^maxcdn$/, :search => 'headers[x-cdn-forward]'   },
    { :search => "headers", :text => 'NetDNA'    },
    { :search => 'headers[server]', :regexp => /^NetDNA/   }
]
end