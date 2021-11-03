Plugin.define do
    name "js_charts" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jscharts.{0,32}\.js/, :search => 'body'  }
]
end