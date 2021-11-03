Plugin.define do
    name "statcounter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /statcounter\.com.counter.counter/, :search => 'body'  }
]
end