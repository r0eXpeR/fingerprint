Plugin.define do
    name "chili_piper" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /js\.chilipiper\.com.marketing\.js/  }
]
end