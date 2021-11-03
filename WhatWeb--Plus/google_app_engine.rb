Plugin.define do
    name "google_app_engine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Google Frontend/  }
]
end