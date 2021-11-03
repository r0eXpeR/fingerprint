Plugin.define do
    name "logrocket" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.logrocket\.(com|io)/  },
    { :search => 'body', :regexp => /cdn\.lr-ingest\.io/  }
]
end