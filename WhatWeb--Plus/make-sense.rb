Plugin.define do
    name "make-sense" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /mk-sense\.com.aweb\?license/, :search => 'body'  }
]
end