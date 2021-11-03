Plugin.define do
    name "zip" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.zipmoney\.com\.au/, :search => 'body'  },
    { :search => 'body', :regexp => /zip\.co/  }
]
end