Plugin.define do
    name "google_font_api" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+fonts\.(?:googleapis|google)\.com/  },
    { :search => 'body', :regexp => /googleapis\.com..+webfont/  }
]
end