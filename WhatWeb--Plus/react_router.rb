Plugin.define do
    name "react_router" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.react-router(@|.)([\d.]+)(?:.[a-z]+)?.react-router(?:.min)?\.js/,:offset => 2, :search => 'body'  }
]
end