Plugin.define do
    name "facebook" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..connect\.facebook\.([a-z]+).[^.]*.[a-z]*\.js/, :search => 'body'  }
]
end