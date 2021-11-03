Plugin.define do
    name "history" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 2, :search => 'body', :regexp => /.history(@|.)([\d.]+)(?:.[a-z]+)?.history(?:(.production|.development))?(?:.min)?\.js/  }
]
end