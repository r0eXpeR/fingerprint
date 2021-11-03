Plugin.define do
    name "jtbc(cms)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/js/jtbc.js'   },
    { :text => 'content="JTBC'   }
]
end