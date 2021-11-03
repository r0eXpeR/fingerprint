Plugin.define do
    name "cppcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^CppCMS.([\d.]+)$/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end