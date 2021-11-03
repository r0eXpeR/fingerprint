Plugin.define do
    name "bookdinners" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /bookdinners\.nl.widget\.js/, :search => 'body'  }
]
end