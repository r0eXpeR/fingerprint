Plugin.define do
    name "ruby_receptionists" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /chatwidget\.ruby\.com/, :search => 'body'  }
]
end