Plugin.define do
    name "kineticjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /kinetic(?:-v?([\d.]+))?(?:\.min)?\.js/  }
]
end