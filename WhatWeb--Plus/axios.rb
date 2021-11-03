Plugin.define do
    name "axios" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 2, :regexp => /.axios(@|.)([\d.]+)(?:.[a-z]+)?.axios(?:.min)?\.js/, :search => 'body'  }
]
end