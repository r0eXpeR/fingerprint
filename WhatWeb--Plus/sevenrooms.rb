Plugin.define do
    name "sevenrooms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /sevenrooms\.\w+.widget.embed\.js/  }
]
end