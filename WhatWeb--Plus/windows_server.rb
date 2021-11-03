Plugin.define do
    name "windows_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Win32|Win64/  }
]
end