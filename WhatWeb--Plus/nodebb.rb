Plugin.define do
    name "nodebb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^.nodebb\.min\.js\?/, :search => 'body'  },
    { :regexp => /^NodeBB$/, :search => 'headers[x-powered-by]'  }
]
end