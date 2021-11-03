Plugin.define do
    name "sift" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.sift(?:science)?\.com.s\.js/  }
]
end