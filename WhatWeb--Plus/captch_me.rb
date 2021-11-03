Plugin.define do
    name "captch_me" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..api\.captchme\.net./, :search => 'body'  }
]
end