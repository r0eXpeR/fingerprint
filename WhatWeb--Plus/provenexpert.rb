Plugin.define do
    name "provenexpert" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /provenexpert\.\w+.widget/  }
]
end