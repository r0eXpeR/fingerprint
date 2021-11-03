Plugin.define do
    name "cookieyes" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /app\.cookieyes\.com.client_data./  }
]
end