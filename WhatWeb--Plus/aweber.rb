Plugin.define do
    name "aweber" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.aweber\.com./  }
]
end