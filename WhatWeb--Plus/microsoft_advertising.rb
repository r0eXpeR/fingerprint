Plugin.define do
    name "microsoft_advertising" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /bat\.bing\.com.bat\.js/  }
]
end