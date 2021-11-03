Plugin.define do
    name "filepond" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /filepond.js/, :search => 'body'  }
]
end