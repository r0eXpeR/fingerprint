Plugin.define do
    name "bugsnag" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.bugsnag.*\.js/, :search => 'body'  }
]
end