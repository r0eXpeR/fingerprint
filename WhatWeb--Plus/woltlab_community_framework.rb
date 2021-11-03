Plugin.define do
    name "woltlab_community_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /WCF\..*\.js/  }
]
end