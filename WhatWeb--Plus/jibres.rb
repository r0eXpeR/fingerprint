Plugin.define do
    name "jibres" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.jibres\.js/, :search => 'body'  },
    { :regexp => /Jibres/, :search => 'body'  },
    { :regexp => /Jibres/, :search => 'headers[x-powered-by]'  }
]
end