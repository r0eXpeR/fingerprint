Plugin.define do
    name "audioeye" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]*audioeye\.com.frame.cookieStorage/  },
    { :search => 'body', :regexp => /audioeye\.com.ae\.js/  }
]
end