Plugin.define do
    name "convertflow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:app|js)\.convertflow\.co/  }
]
end