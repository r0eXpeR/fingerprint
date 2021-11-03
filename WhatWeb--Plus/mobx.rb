Plugin.define do
    name "mobx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /(?:.([\d\.]+))?.mobx(?:\.[a-z]+){0,2}\.js(?:$|\?)/, :search => 'body'  }
]
end