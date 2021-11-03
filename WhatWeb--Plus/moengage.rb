Plugin.define do
    name "moengage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.moengage\.\w+/  }
]
end