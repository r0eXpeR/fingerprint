Plugin.define do
    name "stackla" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /assetscdn\.stackla\.com\.media\.js\.widget\..*?\.js/  }
]
end