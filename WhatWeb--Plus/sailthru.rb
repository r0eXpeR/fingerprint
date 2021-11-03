Plugin.define do
    name "sailthru" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /ak\.sail-horizon\.com/  }
]
end