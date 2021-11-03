Plugin.define do
    name "rocket" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Rocket=https:..rocketcms.io./, :search => 'headers[x-powered-by]'  }
]
end