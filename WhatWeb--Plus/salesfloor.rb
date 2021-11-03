Plugin.define do
    name "salesfloor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /salesFloor\.js/, :search => 'body'  }
]
end