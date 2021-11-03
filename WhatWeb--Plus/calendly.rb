Plugin.define do
    name "calendly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https:..assets\.calendly\.com.assets.external.widget\.js/, :search => 'body'  }
]
end