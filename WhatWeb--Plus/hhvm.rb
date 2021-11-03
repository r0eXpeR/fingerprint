Plugin.define do
    name "hhvm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /HHVM.?([\d.]+)?/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end