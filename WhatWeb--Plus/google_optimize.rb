Plugin.define do
    name "google_optimize" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /googleoptimize\.com.optimize\.js/  }
]
end