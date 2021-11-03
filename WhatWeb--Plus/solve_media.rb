Plugin.define do
    name "solve_media" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..api\.solvemedia\.com./, :search => 'body'  }
]
end