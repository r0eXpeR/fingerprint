Plugin.define do
    name "enyo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /enyo\.js/, :search => 'body'  }
]
end