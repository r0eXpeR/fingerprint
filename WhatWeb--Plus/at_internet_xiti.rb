Plugin.define do
    name "at_internet_xiti" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /xiti\.com.hit\.xiti/  }
]
end