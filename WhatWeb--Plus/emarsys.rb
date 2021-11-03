Plugin.define do
    name "emarsys" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:static|cdn)\.scarabresearch\.com/  }
]
end