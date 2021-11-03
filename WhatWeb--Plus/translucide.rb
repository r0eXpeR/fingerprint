Plugin.define do
    name "translucide" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /lucide\.init(?:\.min)?\.js/  }
]
end