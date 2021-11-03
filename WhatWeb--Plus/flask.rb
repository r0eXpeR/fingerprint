Plugin.define do
    name "flask" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Werkzeug.?([\d\.]+)?/,:offset => 1  }
]
end