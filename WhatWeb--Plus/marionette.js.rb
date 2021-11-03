Plugin.define do
    name "marionette.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /backbone\.marionette.*\.js/  }
]
end