Plugin.define do
    name "backbone.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /backbone.*\.js/  }
]
end