Plugin.define do
    name "debian" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Debian'    },
    { :search => 'headers[server]', :regexp => /Debian/   },
    {:offset => 1, :regexp => /(?:Debian|dotdeb|(potato|woody|sarge|etch|lenny|squeeze|wheezy|jessie|stretch|buster|sid))/, :search => 'headers[x-powered-by]'   }
]
end