Plugin.define do
    name "mollom" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img[^>]+\.mollom\.com/  },
    { :search => 'body', :regexp => /mollom(?:\.min)?\.js/  }
]
end