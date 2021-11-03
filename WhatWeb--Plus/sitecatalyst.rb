Plugin.define do
    name "sitecatalyst" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.s[_-]code.*\.js/, :search => 'body'  }
]
end