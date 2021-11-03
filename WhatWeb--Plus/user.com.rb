Plugin.define do
    name "user.com" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+.id="ue_widget/  }
]
end