Plugin.define do
    name "cloudcoins" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /https?:..cdn\.cloudcoins\.co.javascript.cloudcoins\.min\.js/  }
]
end