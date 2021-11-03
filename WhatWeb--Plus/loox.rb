Plugin.define do
    name "loox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /loox\.io.widget/  }
]
end