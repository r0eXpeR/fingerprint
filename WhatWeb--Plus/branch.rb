Plugin.define do
    name "branch" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /app\.link._r\?sdk=web([\d.]+)/  },
    { :search => 'body', :regexp => /cdn\.branch\.io/  }
]
end