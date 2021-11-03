Plugin.define do
    name "outbrain" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /widgets\.outbrain\.com.outbrain\.js/  }
]
end