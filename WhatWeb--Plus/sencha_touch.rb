Plugin.define do
    name "sencha_touch" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /sencha-touch.*\.js/, :search => 'body'  }
]
end