Plugin.define do
    name "sunos" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /SunOS( [\d\.]+)?/,:offset => 1, :search => 'headers[servlet-engine]'  },
    { :search => 'headers[server]', :regexp => /SunOS( [\d\.]+)?/,:offset => 1  }
]
end