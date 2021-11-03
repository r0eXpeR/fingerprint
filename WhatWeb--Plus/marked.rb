Plugin.define do
    name "marked" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.marked(?:\.min)?\.js/, :search => 'body'  }
]
end