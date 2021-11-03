Plugin.define do
    name "jqplot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jqplot.*\.js/, :search => 'body'  }
]
end