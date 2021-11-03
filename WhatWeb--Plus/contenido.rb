Plugin.define do
    name "contenido" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Contenido ([\d.]+)/, :search => 'body'  }
]
end