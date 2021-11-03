Plugin.define do
    name "gentoo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /gentoo/, :search => 'headers[x-powered-by]'  }
]
end