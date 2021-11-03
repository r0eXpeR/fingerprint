Plugin.define do
    name "paddle" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.paddle\.com.paddle.paddle\.js/, :search => 'body'  }
]
end