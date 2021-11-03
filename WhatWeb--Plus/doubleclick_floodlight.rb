Plugin.define do
    name "doubleclick_floodlight" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..fls\.doubleclick\.net/, :search => 'body'  }
]
end