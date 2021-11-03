Plugin.define do
    name "firepush" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.firepush\.\w+/  }
]
end