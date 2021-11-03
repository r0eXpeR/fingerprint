Plugin.define do
    name "woopra" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /static\.woopra\.com/  }
]
end