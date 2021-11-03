Plugin.define do
    name "datadome" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https:..ct\.datadome\.co.[a-z]\.js$/  },
    { :search => 'headers[server]', :regexp => /^DataDome$/  }
]
end