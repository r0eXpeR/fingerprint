Plugin.define do
    name "lightmon_engine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Lightmon Engine Copyright Lightmon/  },
    { :search => 'body', :regexp => /LightMon Engine/  }
]
end