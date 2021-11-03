Plugin.define do
    name "userlike" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /userlike\.min\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /userlikelib\.min\.js/  }
]
end