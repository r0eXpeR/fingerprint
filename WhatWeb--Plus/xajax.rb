Plugin.define do
    name "xajax" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /xajax_core.*\.js/  }
]
end