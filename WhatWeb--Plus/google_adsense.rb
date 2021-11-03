Plugin.define do
    name "google_adsense" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /2mdn\.net/, :search => 'body'   },
    { :search => 'body', :regexp => /ad\.ca\.doubleclick\.net/   },
    { :search => 'body', :regexp => /googlesyndication\.com./   },
    { :text => 'googlesyndication'    }
]
end