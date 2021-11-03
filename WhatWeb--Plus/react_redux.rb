Plugin.define do
    name "react_redux" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.react-redux(@|.)([\d.]+)(?:.[a-z]+)?.react-redux(?:.min)?\.js/,:offset => 2, :search => 'body'  }
]
end