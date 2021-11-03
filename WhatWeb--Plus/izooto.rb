Plugin.define do
    name "izooto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.izooto\.\w+/, :search => 'body'  }
]
end