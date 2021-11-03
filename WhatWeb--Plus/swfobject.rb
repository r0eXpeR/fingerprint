Plugin.define do
    name "swfobject" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /swfobject.*\.js/  }
]
end