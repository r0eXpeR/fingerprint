Plugin.define do
    name "resdiary" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.resdiary\.\w+./  }
]
end