Plugin.define do
    name "expertrec" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /expertrec\.com.api.js.ci_common\.js\?id=.*/, :search => 'body'  }
]
end