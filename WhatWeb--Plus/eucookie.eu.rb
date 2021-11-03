Plugin.define do
    name "eucookie.eu" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /eucookie\.eu.public.gdpr-cookie-consent\.js/  }
]
end