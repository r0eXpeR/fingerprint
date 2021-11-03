Plugin.define do
    name "yottaa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.yottaa\.\w+./  }
]
end