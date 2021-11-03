Plugin.define do
    name "flexslider" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jquery\.flexslider(?:\.min)?\.js$/, :search => 'body'  }
]
end