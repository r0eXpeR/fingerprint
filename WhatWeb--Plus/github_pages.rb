Plugin.define do
    name "github_pages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^GitHub\.com$/  }
]
end