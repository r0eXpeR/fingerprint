Plugin.define do
    name "locomotive" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]*.sites.[a-z\d]{24}.theme.stylesheets/  }
]
end