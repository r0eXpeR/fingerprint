Plugin.define do
    name "hello_bar" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /hellobar\.js/, :search => 'body'  }
]
end