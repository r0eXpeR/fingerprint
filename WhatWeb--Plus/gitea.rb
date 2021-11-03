Plugin.define do
    name "gitea" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<div class="ui left">\n\s+© Gitea Version: ([\d.]+)/  },
    { :search => 'body', :regexp => /^go,git,self-hosted,gitea$/  }
]
end