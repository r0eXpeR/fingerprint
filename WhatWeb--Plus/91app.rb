Plugin.define do
    name "91app" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https\:\.\.track\.91app\.io\.track\.js\?/, :search => 'body'  }
]
end