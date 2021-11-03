Plugin.define do
    name "loginradius" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.loginradius\.com/, :search => 'body'  },
    { :search => 'body', :regexp => /\.lrcontent\.com/  }
]
end