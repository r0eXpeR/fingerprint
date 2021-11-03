Plugin.define do
    name "windows_ce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /\bWinCE\b/  }
]
end