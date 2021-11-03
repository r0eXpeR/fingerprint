Plugin.define do
    name "underscore.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /underscore.*\.js(?:\?ver=([\d.]+))?/, :search => 'body',:offset => 1  }
]
end