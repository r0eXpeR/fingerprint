Plugin.define do
    name "impact" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /d\.impactradius-event\.com/, :search => 'body'  }
]
end