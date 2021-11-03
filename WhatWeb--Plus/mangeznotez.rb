Plugin.define do
    name "mangeznotez" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\w+.mangeznotez\.\w+(?:.*\?ver=([\d.]+))?/,:offset => 1, :search => 'body'  },
    { :search => 'body', :regexp => /www\.mangeznotez\.\w+/  }
]
end