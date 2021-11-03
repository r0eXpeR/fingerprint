Plugin.define do
    name "mathjax" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /([\d.]+)?.mathjax\.js/,:offset => 1, :search => 'body'  }
]
end