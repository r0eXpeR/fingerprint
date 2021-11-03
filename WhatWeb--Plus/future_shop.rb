Plugin.define do
    name "future_shop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /future-shop.*\.js/, :search => 'body'  }
]
end