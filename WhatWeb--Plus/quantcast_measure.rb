Plugin.define do
    name "quantcast_measure" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.quantserve\.com.quant\.js/, :search => 'body'  }
]
end