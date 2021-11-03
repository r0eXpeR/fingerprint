Plugin.define do
    name "bittads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /bittads\.com.js.bitt\.js$/, :search => 'body'  }
]
end