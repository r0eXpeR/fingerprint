Plugin.define do
    name "javaserver_faces" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /JSF(?:.([\d.]+))?/  }
]
end