Plugin.define do
    name "webzi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Webzi/, :search => 'body'  },
    { :regexp => /cdn\.6th\.ir/, :search => 'body'  }
]
end