Plugin.define do
    name "textpattern_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Textpattern/, :search => 'body'  }
]
end