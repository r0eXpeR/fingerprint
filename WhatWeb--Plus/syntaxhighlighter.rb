Plugin.define do
    name "syntaxhighlighter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:script|link)[^>]*sh(?:Core|Brush|ThemeDefault)/  }
]
end