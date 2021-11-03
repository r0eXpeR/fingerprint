Plugin.define do
    name "scrollreveal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+data-sr(?:-id)/  },
    { :regexp => /scrollreveal(?:\.min)(?:\.js)/, :search => 'body'  }
]
end