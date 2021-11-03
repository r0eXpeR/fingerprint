Plugin.define do
    name "cowboy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Cowboy$/  }
]
end