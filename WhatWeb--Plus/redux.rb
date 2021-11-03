Plugin.define do
    name "redux" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 2, :search => 'body', :regexp => /.redux(@|.)([\d.]+)(?:.[a-z]+)?.redux(?:.min)?\.js/  }
]
end