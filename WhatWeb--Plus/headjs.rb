Plugin.define do
    name "headjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]*data-headjs-load/  },
    { :regexp => /head\.(?:core|load)(?:\.min)?\.js/, :search => 'body'  }
]
end