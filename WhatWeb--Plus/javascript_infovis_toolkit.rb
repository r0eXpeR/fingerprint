Plugin.define do
    name "javascript_infovis_toolkit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /jit(?:-yc)?\.js/  }
]
end