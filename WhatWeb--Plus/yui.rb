Plugin.define do
    name "yui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:.yui.|yui\.yahooapis\.com)/, :search => 'body'   },
    { :text => 'yui.js'    },
    { :text => 'yui.min.js'    }
]
end