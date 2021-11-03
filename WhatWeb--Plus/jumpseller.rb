Plugin.define do
    name "jumpseller" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /assets\.jumpseller\.\w+./, :search => 'body'  },
    { :search => 'body', :regexp => /jumpseller-apps\.herokuapp\.\w+./  }
]
end