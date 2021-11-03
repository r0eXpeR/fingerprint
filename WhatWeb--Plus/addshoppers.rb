Plugin.define do
    name "addshoppers" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:cdn\.)?shop\.pe.widget./, :search => 'body'  }
]
end