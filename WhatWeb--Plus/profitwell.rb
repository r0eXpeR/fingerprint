Plugin.define do
    name "profitwell" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /public\.profitwell\.com.js.profitwell\.js/, :search => 'body'  }
]
end