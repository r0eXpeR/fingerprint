Plugin.define do
    name "script.aculo.us" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.(?:scriptaculous|protoaculous)(?:\.js|.)/, :search => 'body'  }
]
end