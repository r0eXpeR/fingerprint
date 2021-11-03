Plugin.define do
    name "clearsale" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /device\.clearsale\.com\.br/, :search => 'body'  }
]
end