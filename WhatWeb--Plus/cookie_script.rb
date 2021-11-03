Plugin.define do
    name "cookie_script" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /..cookie-script\.com.s./  }
]
end