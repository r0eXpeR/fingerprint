Plugin.define do
    name "yahoo!_web_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /d\.yimg\.com.mi.ywa\.js/  }
]
end