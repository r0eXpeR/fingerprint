Plugin.define do
    name "cherrypy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /CherryPy(?:.([\d.]+))?/  }
]
end