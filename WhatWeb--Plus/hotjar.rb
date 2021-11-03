Plugin.define do
    name "hotjar" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..static\.hotjar\.com./, :search => 'body'  }
]
end