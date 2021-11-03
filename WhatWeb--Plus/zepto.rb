Plugin.define do
    name "zepto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /zepto.*\.js/  }
]
end