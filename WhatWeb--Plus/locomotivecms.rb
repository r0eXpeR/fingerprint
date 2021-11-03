Plugin.define do
    name "locomotivecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]*.sites.[a-z\d]{24}.theme.stylesheets/  }
]
end