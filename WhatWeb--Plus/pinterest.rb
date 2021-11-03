Plugin.define do
    name "pinterest" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..assets\.pinterest\.com.js.pinit\.js/, :search => 'body'  }
]
end