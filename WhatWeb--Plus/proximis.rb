Plugin.define do
    name "proximis" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /widget-commerce(?:\.min)?\.js/  }
]
end