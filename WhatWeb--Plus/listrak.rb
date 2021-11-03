Plugin.define do
    name "listrak" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /services\.listrak\.com/, :search => 'body'  },
    { :search => 'body', :regexp => /(?:cdn|s1)\.listrakbi\.com/  }
]
end