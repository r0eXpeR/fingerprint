Plugin.define do
    name "starlet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Plack::Handler::Starlet'    },
    { :search => 'headers[server]', :regexp => /^Plack::Handler::Starlet/   }
]
end