Plugin.define do
    name "bronto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:snip|cdn)\.bronto\.com/  }
]
end