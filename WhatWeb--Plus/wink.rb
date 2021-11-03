Plugin.define do
    name "wink" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:_base.js.base|wink).*\.js/, :search => 'body'  }
]
end