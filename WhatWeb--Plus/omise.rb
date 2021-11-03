Plugin.define do
    name "omise" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.omise\.co/  }
]
end