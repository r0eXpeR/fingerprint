Plugin.define do
    name "mastodon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Mastodon$/  }
]
end